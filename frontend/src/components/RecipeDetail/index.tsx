import { RecipeDetailFragment } from 'graphql/generated'

interface Props {
  recipe: RecipeDetailFragment
}

export const RecipeDetail = ({ recipe }: Props) => {
  return <p>{recipe.id}</p>
}
