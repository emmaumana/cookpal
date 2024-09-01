import './index.scss'

import { AppBadge } from 'components/ui/AppBadge'
import { AppBox } from 'components/ui/AppBox'
import { AppIcon } from 'components/ui/AppIcon'
import React from 'react'
import { RecipeDetailFragment } from 'graphql/generated'
import { appRoutes } from 'routes'
import { useNavigate } from 'react-router-dom'

interface Props {
  recipe: RecipeDetailFragment
  isFavorite: boolean
  onAddFavorite: () => void
  onRemoveFavorite: () => void
}

export const RecipesSingle = ({ recipe, isFavorite, onAddFavorite, onRemoveFavorite }: Props) => {
  const navigate = useNavigate()

  if (!recipe) return null

  const recipeCategories = recipe.categories?.nodes?.filter((node) => !!node)
  const handleFavorite = (e: React.MouseEvent) => {
    e.stopPropagation()
    if (isFavorite) {
      onRemoveFavorite()
    } else {
      onAddFavorite()
    }
  }
  const handleOpenRecipe = () => {
    if (appRoutes.home?.children?.[0]?.route) {
      navigate(appRoutes.home.children[0].route(recipe.id), { state: { id: recipe.id } })
    }
  }
  const parseTime = (time: number) => {
    if (time.toFixed().length <= 2) return `${time}m`

    const hours = Math.floor(time / 60)
    const minutes = time % 60

    if (minutes >= 10) return `${hours}:${minutes}h`

    return `${hours}:0${minutes}h`
  }

  return (
    <AppBox
      display="grid"
      className={`app-recipe recipe-${recipe.id}`}
      backgroundColor="white"
      gap="s12"
      padding="s12"
      paddingBottom="s16"
      borderRadius="s20"
      minHeight="full"
      onClick={handleOpenRecipe}
    >
      <AppBox display="block" height="s90" className="app-recipe__heading">
        <AppBox className="app-recipe__cover" overflow="hidden" borderRadius="s16" height="full">
          <img
            loading="lazy"
            src={recipe.imageUrl || ''}
            alt="chicken-dish"
            className="app-recipe__image"
          />
          <AppBox
            className="app-recipe__favorite-icon"
            borderRadius="s100"
            backgroundColor="white"
            padding="s6"
            onClick={(e) => handleFavorite(e)}
          >
            {isFavorite ? <AppIcon icon="IoIosHeart" /> : <AppIcon icon="IoIosHeartEmpty" />}
          </AppBox>

          <AppBadge
            className="app-recipe__cooktime"
            borderRadius="s100"
            label={parseTime(recipe.totalTime || 0)}
            icon="AiOutlineClockCircle"
            type="white"
          />
        </AppBox>
      </AppBox>
      <AppBox className="app-recipe__body" flexDirection="column" gap="s6">
        <AppBox alignItems="flex-start" justifyContent="space-between" gap="s4">
          <h3>{recipe.title}</h3>
          {recipe.rating && (
            <AppBox className="app-recipe__rating" alignItems="center" gap="s4">
              <AppIcon icon="IoStar" color="gold" />
              <span>{recipe.rating}</span>
            </AppBox>
          )}
        </AppBox>
        {recipeCategories && (
          <AppBox className="app-recipe__categories" gap="s4">
            {recipeCategories.map((category) => (
              <span
                className={`recipe-category-${category.id}`}
                key={`recipe-category-${category.id}`}
              >
                {category?.name}
              </span>
            ))}
          </AppBox>
        )}
      </AppBox>
      <AppBox className="app-recipe__footer" alignSelf="flex-end">
        <AppBadge label="Heart-healty" type="limeDark" icon="IoHeartCircleOutline" />
      </AppBox>
    </AppBox>
  )
}
