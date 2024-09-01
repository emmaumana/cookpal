import { useEffect, useState } from 'react'

import { AppBox } from 'components/ui/AppBox'
import { AppHeading } from 'components/ui/AppHeading'
import { AppIcon } from 'components/ui/AppIcon'
import { AppSearch } from 'components/AppSearch'
import { AppSelectField } from 'components/ui/AppSelectField'
import { EmptyState } from 'components/ui/EmptyState'
import { Outlet } from 'react-router-dom'
import { RecipesFeed } from 'components/RecipesFeed'
import { useGetRecipesQuery } from 'graphql/generated'
import { usePagination } from 'hooks/usePagination'

export const HomePage = () => {
  const [search, setSearch] = useState<string | null>(null)
  const [sortByCookingTime, setSortByCookingTime] = useState<string | null>(null)
  const [sortByRating, setSortByRating] = useState<string | null>(null)

  const { data, loading, fetchMore, refetch } = useGetRecipesQuery({
    defaultOptions: { notifyOnNetworkStatusChange: true, fetchPolicy: 'cache-and-network' },
    variables: { ratingSort: sortByRating, totalTimeSort: sortByCookingTime, search },
  })

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
    refetch({ search: query, ratingSort: sortByRating, totalTimeSort: sortByCookingTime }).then(
      () => {
        resetPagination()
      },
    )
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

  useEffect(() => {
    resetPagination()
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [sortByCookingTime, sortByRating])

  return (
    <>
      <AppSearch totalFound={totalRecipes} onSearch={(query) => handleOnSearch(query)} />

      <AppBox className="recipes-container" flexDirection="column" paddingTop="s24" gap="s24">
        <AppBox justifyContent="space-between" width="full" alignItems="flex-start">
          <AppHeading title="Explore recipes" subtitle="Explore recipes based on top votes" />
          <AppBox alignSelf="center" gap="s24">
            <AppSelectField
              id="rating"
              name="rating"
              onChange={(e) => setSortByRating(e.target.value)}
              options={[
                { label: 'Sort by rating', value: '' },
                { label: 'Top rated', value: 'desc' },
                { label: 'Low rated', value: 'asc' },
              ]}
            />
            <AppSelectField
              id="cooking-time"
              name="cooking-time"
              options={[
                { label: 'Sort by cooking time', value: '' },
                { label: 'Shortest', value: 'asc' },
                { label: 'Longest', value: 'desc' },
              ]}
              onChange={(e) => setSortByCookingTime(e.target.value)}
            />
          </AppBox>
          <AppBox className="recipes-feed__nav" gap="s12">
            <button onClick={previousPage} disabled={!hasPreviousPage}>
              <AppIcon className="recipes-feed__left-arrow" icon="AiOutlineArrowLeft" />
            </button>
            <button onClick={handleNextPage} disabled={!hasNextPage}>
              <AppIcon className="recipes-feed__rigth-arrow" icon="AiOutlineArrowRight" />
            </button>
          </AppBox>
        </AppBox>
        {recipesToDisplay?.length || loading ? (
          <RecipesFeed loading={loading} recipes={recipesToDisplay} itemsPerPage={itemsPerPage} />
        ) : (
          <EmptyState title="No recepies found..." />
        )}
        <Outlet />
      </AppBox>
    </>
  )
}
