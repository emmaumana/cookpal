import './index.scss'

import { AppBox } from '../AppBox'
import { AppIcon } from '../AppIcon'
import { InputHTMLAttributes } from 'react'
import { TIconNames } from 'lib/icons'

interface Props extends InputHTMLAttributes<HTMLInputElement> {
  label?: string
  placeholder?: string
  icon?: TIconNames
  iconPosition?: 'left' | 'right'
}

export const AppInputField = ({ label, icon, iconPosition, ...props }: Props) => {
  return (
    <AppBox
      className="app-input"
      flexDirection="column"
      backgroundColor="white"
      paddingX="s24"
      borderRadius="s20"
      style={{ boxShadow: '0px 0px 10px rgba(0, 0, 0, 0.15)' }}
    >
      {label && <label className="app-input__label">Search for recipes</label>}
      <AppBox alignItems="center" gap="s12">
        {icon && iconPosition === 'left' && <AppIcon className="app-input__icon" icon={icon} />}
        <input className="app-input__control" {...props} />
        {icon && iconPosition === 'right' && <AppIcon className="app-input__icon" icon={icon} />}
      </AppBox>
    </AppBox>
  )
}
