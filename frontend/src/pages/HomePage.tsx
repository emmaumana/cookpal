import { AppBox } from 'components/ui/AppBox'
import { AppHeading } from 'components/ui/AppHeading'
import { AppIcon } from 'components/ui/AppIcon'
import { AppSearch } from 'components/AppSearch'
import { EmptyState } from 'components/ui/EmptyState'
import { Outlet } from 'react-router-dom'
import { RecipesFeed } from 'components/RecipesFeed'
import { useGetRecipesQuery } from 'graphql/generated'
import { usePagination } from 'hooks/usePagination'
import { useState } from 'react'

export const HomePage = () => {
  const { data, loading, fetchMore, refetch } = useGetRecipesQuery({
    defaultOptions: { notifyOnNetworkStatusChange: true, fetchPolicy: 'cache-and-network' },
  })
  const [search, setSearch] = useState<string | null>(null)

  const connection = data?.recipesConnection

  const itemsPerPage = 12
  const totalRecipes = connection?.recordCount || 0
  const currentLoadedRecipes = connection?.edges?.length || 0
  const {
    firstIndexItem,
    lastIndexItem,
    haveNeededItemsLoaded,
    nextPage,
    previousPage,
    resetPagination,
    hasNextPage,
    hasPreviousPage,
  } = usePagination({
    itemsPerPage,
    totalLoadedCount: currentLoadedRecipes,
    totalConnectionCount: totalRecipes,
  })

  const handleOnSearch = (query: string) => {
    setSearch(query)
    refetch({ search: query }).then(() => {
      resetPagination()
    })
  }

  const handleNextPage = () => {
    nextPage()
    if (haveNeededItemsLoaded) return

    fetchMore({
      variables: { after: connection?.pageInfo.endCursor, search },
    })
  }

  const recipesToDisplay = connection?.edges
    ?.map((e) => e?.node)
    .filter((node) => !!node)
    .slice(firstIndexItem, lastIndexItem)

  return (
    <>
      <AppSearch totalFound={totalRecipes} onSearch={(query) => handleOnSearch(query)} />

      <AppBox
        className="recipes-feed__heading"
        justifyContent="space-between"
        alignItems="flex-start"
        paddingTop="s24"
      >
        <AppHeading title="Explore recepies" subtitle="Explore recipes based on top votes" />
        <AppBox className="recipes-feed__nav" gap="s12">
          <button onClick={previousPage} disabled={!hasPreviousPage}>
            <AppIcon className="recipes-feed__left-arrow" icon="AiOutlineArrowLeft" />
          </button>
          <button onClick={handleNextPage} disabled={!hasNextPage}>
            <AppIcon className="recipes-feed__rigth-arrow" icon="AiOutlineArrowRight" />
          </button>
        </AppBox>
        <Outlet />
      </AppBox>
      {recipesToDisplay?.length ? (
        <RecipesFeed loading={loading} recipes={recipesToDisplay} itemsPerPage={itemsPerPage} />
      ) : (
        <EmptyState title="No recepies found..." />
      )}
    </>
  )
}
