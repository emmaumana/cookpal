import './index.scss'

import { IoIosHeartEmpty, IoIosHelpCircleOutline } from 'react-icons/io'

import { AiOutlineApi } from 'react-icons/ai'
import { AppBox } from 'components/ui/AppBox'
import { IoCompassOutline } from 'react-icons/io5'
import appLogo from 'images/logo.png'

export const AppRightSidebar = () => {
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
        <li className="app-sidebar__menu-item active">
          <IoCompassOutline size={iconSize} />
          Explore
        </li>
        <li className="app-sidebar__menu-item">
          <IoIosHeartEmpty size={iconSize} />
          Favorites
        </li>
        <li className="app-sidebar__menu-item">
          <IoIosHelpCircleOutline size={iconSize} />
          Help
        </li>
        <li className="app-sidebar__menu-item">
          <AiOutlineApi size={iconSize} />
          API
        </li>
      </ul>
    </AppBox>
  )
}
