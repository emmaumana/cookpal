import './index.scss'

import { AppBox } from 'components/ui/AppBox'
import { PropsWithChildren } from 'react'

export const AppContainer = ({ children }: PropsWithChildren) => {
  return (
    <div className="app-container">
      <AppBox display="grid" className="app-container__wrapper">
        {children}
      </AppBox>
    </div>
  )
}
