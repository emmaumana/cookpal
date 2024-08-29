import './index.scss'

import { AppBox } from 'components/ui/AppBox'
import { PropsWithChildren } from 'react'

export const AppContainer = ({ children }: PropsWithChildren) => {
  return (
    <div
      className="app-container"
      style={{
        borderRadius: '20px',
        overflow: 'hidden',
        boxShadow: '0 0 20px 0 rgba(0, 0, 0, .25)',
      }}
    >
      <AppBox display="grid" className="app-container__wrapper">
        {children}
      </AppBox>
    </div>
  )
}
