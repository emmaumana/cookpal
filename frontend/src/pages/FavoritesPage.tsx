import { AppBox } from 'components/ui/AppBox'
import { AppHeading } from 'components/ui/AppHeading'
import { EmptyState } from 'components/ui/EmptyState'
import { Outlet } from 'react-router-dom'
import { RecipesFeed } from 'components/RecipesFeed'
import { useGetRecipesQuery } from 'graphql/generated'
import { useLocalStorage } from 'hooks/useLocalStorage'

export const FavoritesPage = () => {
  const { storageValues, refetchStorage } = useLocalStorage('favorites')
  const { data, loading } = useGetRecipesQuery({
    variables: { ids: storageValues as string[] },
    defaultOptions: { notifyOnNetworkStatusChange: true, fetchPolicy: 'cache-first' },
  })

  const recipesToDisplay =
    data?.recipesConnection.edges?.map((e) => e?.node).filter((n) => !!n) || []

  return (
    <AppBox flexDirection="column" height="full" paddingTop="s120" gap="s80">
      <AppHeading title="Your favorites recipes" />
      {recipesToDisplay.length ? (
        <RecipesFeed
          loading={loading}
          itemsPerPage={12}
          recipes={recipesToDisplay}
          onRemoveFavorite={refetchStorage}
        />
      ) : (
        <EmptyState title="No favorites recepies added yet..." />
      )}
      <Outlet />
    </AppBox>
  )
}
