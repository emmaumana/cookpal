import { Route, RouteObject, Routes } from 'react-router-dom'

import { FavoritesPage } from 'pages/FavoritesPage'
import { HomePage } from 'pages/HomePage'
import { RecipeDetailPage } from 'pages/RecipeDetailPage'

interface IAppRouteObject {
  id: string
  children?: IAppRouteObject[]
  route?: (id: string) => string
}

interface IAppRoutes {
  [key: string]: RouteObject & IAppRouteObject
}

type TAppRouteObject = RouteObject & IAppRouteObject

const recipeDetailRoute: TAppRouteObject = {
  id: 'recipe-detail',
  path: 'recipe/:id',
  route(id: string) {
    return `${this.path?.replace(':id', id)}`
  },
  element: <RecipeDetailPage />,
}

// eslint-disable-next-line react-refresh/only-export-components
export const appRoutes: IAppRoutes = {
  home: {
    id: 'home',
    path: '/',
    element: <HomePage />,
    children: [recipeDetailRoute],
  },
  favorites: {
    id: 'favorites',
    path: '/favorites',
    element: <FavoritesPage />,
    children: [recipeDetailRoute],
  },
}

export const Router = () => {
  return (
    <Routes>
      {Object.values(appRoutes).map((route) => {
        return (
          <Route key={`${route.id}`} path={route.path} element={route.element}>
            {route.children?.map((child) => {
              return <Route key={`${child.id}`} path={child.path} element={child.element} />
            })}
          </Route>
        )
      })}
    </Routes>
  )
}
