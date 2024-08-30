import './index.scss'

import { AppBox } from 'components/ui/AppBox'
import { RecipeDetailFragment } from 'graphql/generated'
import { RecipeSingleSkeleton } from './RecipeSingleSkeleton'
import { RecipesSingle } from './RecipesSingle'
import { range } from 'lodash'
import { useLocalStorage } from 'hooks/useLocalStorage'

interface Props {
  loading: boolean
  recipes: RecipeDetailFragment[] | undefined
  itemsPerPage: number
  onRemoveFavorite?: () => void
}

export const RecipesFeed = ({ loading, recipes, itemsPerPage, onRemoveFavorite }: Props) => {
  const { addItemToStore, removeItemFromStore, storeIncludesItem } = useLocalStorage('favorites')
  const handleRemoveFavorite = (id: string) => {
    removeItemFromStore(id)
    if (onRemoveFavorite) onRemoveFavorite()
  }

  return (
    <AppBox className="recipes-feed__grid" display="grid" gap="s24">
      {loading || !recipes
        ? range(itemsPerPage).map((idx) => <RecipeSingleSkeleton key={`skeleton-${idx}`} />)
        : recipes.map((recipe) => (
            <RecipesSingle
              key={`${recipe.title.trim()}-${recipe.id}`}
              recipe={recipe}
              isFavorite={storeIncludesItem(recipe.id)}
              onAddFavorite={() => addItemToStore(recipe.id)}
              onRemoveFavorite={() => handleRemoveFavorite(recipe.id)}
            />
          ))}
    </AppBox>
  )
}
