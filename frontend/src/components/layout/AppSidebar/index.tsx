import './index.scss'

import { IoIosHeartEmpty, IoIosHelpCircleOutline } from 'react-icons/io'

import { AiOutlineApi } from 'react-icons/ai'
import { AppBox } from 'components/ui/AppBox'
import { IoHomeOutline } from 'react-icons/io5'
import { NavLink } from 'react-router-dom'
import appLogo from 'images/logo.png'
import { appRoutes } from 'routes'

export const AppSidebar = () => {
  const iconSize = '30px'

  return (
    <AppBox
      display="grid"
      padding="s40"
      alignContent="flex-start"
      justifyItems="center"
      className="app-sidebar"
      backgroundColor="white"
      gap="s80"
    >
      <div className="app-sidebar__logo">
        <img src={appLogo} width="220px"></img>
      </div>

      <ul className="app-sidebar__menu">
        {appRoutes.home.path && (
          <li className={`app-sidebar__menu-item ${appRoutes.home.id}`}>
            <NavLink to={appRoutes.home.path}>
              <IoHomeOutline size={iconSize} />
              Home
            </NavLink>
          </li>
        )}
        {appRoutes.favorites.path && (
          <li className={`app-sidebar__menu-item ${appRoutes.favorites.id}`}>
            <NavLink className="app-sidebar__menu-item" to={appRoutes.favorites.path}>
              <IoIosHeartEmpty size={iconSize} />
              Favorites
            </NavLink>
          </li>
        )}
        <li className="app-sidebar__menu-item">
          <a href="#">
            <IoIosHelpCircleOutline size={iconSize} />
            Help
          </a>
        </li>
        <li className="app-sidebar__menu-item">
          <a href="#">
            <AiOutlineApi size={iconSize} />
            API
          </a>
        </li>
      </ul>
    </AppBox>
  )
}
