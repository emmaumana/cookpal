import './index.scss'

import React, { useRef } from 'react'
import { useLocation, useNavigate } from 'react-router-dom'

import { AppBadge } from 'components/ui/AppBadge'
import { AppBox } from 'components/ui/AppBox'
import { AppIcon } from 'components/ui/AppIcon'
import { useGetRecipeQuery } from 'graphql/generated'

export const RecipeDetailPage = () => {
  const location = useLocation()
  const navigate = useNavigate()
  const recipeId = location.state?.id
  const modalContainer = useRef<HTMLDivElement>(null)

  const { data, loading } = useGetRecipeQuery({
    variables: { id: recipeId || '' },
    skip: recipeId === undefined,
  })
  const recipe = data?.recipe

  if (loading || !recipe) return null

  const recipeCategories = recipe.categories?.nodes?.filter((n) => !!n)
  const recipeIngredients = recipe.ingredients?.nodes?.filter((n) => !!n)
  const cookTime = recipe.cookTimeMinutes || recipe.preTimeMinutes || null
  const handleOnClick = (e: React.MouseEvent) => {
    if (e.target !== modalContainer.current) return
    navigate(-1)
  }

  return (
    <div className="modal" onClickCapture={(e) => handleOnClick(e)} ref={modalContainer}>
      <AppBox
        className="modal__wrapper"
        flexDirection="column"
        alignItems="center"
        borderRadius="s10"
        zIndex="50"
      >
        <AppBox
          className="modal__wrapper-inner"
          padding="s24"
          alignContent="center"
          justifyContent="center"
        >
          <AppBox
            className="recipe-detail"
            flexDirection="column"
            width="full"
            height="full"
            gap="s24"
          >
            <AppBox
              display="grid"
              className="recipe-detail__heading"
              borderRadius="s8"
              width="full"
              height="s220"
              overflow="hidden"
              justifyItems="center"
              alignContent="center"
            >
              <AppBox
                className="recipe-detail__heading-detail"
                flexDirection="column"
                justifyContent="center"
                alignItems="center"
                gap="s8"
              >
                <h2>{recipe.title}</h2>
                {recipeCategories && (
                  <AppBox className="recipe-detail__heading-categories" gap="s6">
                    {recipeCategories.map((category) => (
                      <span key={category.id}>{category.name}</span>
                    ))}
                  </AppBox>
                )}
              </AppBox>
              {recipe.imageUrl && (
                <AppBox className="recipe-detail__cover">
                  <img src={recipe.imageUrl} alt={recipe.title} />
                </AppBox>
              )}
            </AppBox>
            <AppBox className="recipe-detail__body" flexDirection="column" gap="s24">
              <AppBox className="recipe-detail__badges" gap="s12">
                {cookTime && (
                  <AppBadge
                    label={cookTime.toString()}
                    type="secondary"
                    icon="AiOutlineClockCircle"
                  />
                )}
                {recipe.rating && (
                  <AppBadge
                    label={`${recipe.rating.toFixed(1)}`}
                    type="gold"
                    icon="IoStarOutline"
                  />
                )}
                <AppBadge label="Heart-healty" type="pink" icon="IoHeartCircleOutline" />
              </AppBox>
              {recipeIngredients && (
                <AppBox className="recipe-detail__ingredients" flexDirection="column" gap="s12">
                  <h3>
                    <AppIcon icon="IoBookOutline" />
                    Ingredients
                  </h3>
                  <ul>
                    {recipeIngredients.map((ingredient) => (
                      <li key={`ingedient-list-item-${ingredient.id}`}>- {ingredient.title}</li>
                    ))}
                  </ul>
                </AppBox>
              )}
            </AppBox>
          </AppBox>
        </AppBox>
      </AppBox>
    </div>
  )
}
