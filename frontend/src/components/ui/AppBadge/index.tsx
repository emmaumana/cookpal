import './index.scss'

import { TBoxBorderRadius, TBoxColor } from 'lib/themeConfig'

import { AppBox } from '../AppBox'
import { AppIcon } from '../AppIcon'
import { DOMAttributes } from 'react'
import { TIconNames } from 'lib/icons'

interface Props extends DOMAttributes<HTMLDivElement> {
  label: string
  type: TBoxColor
  icon?: TIconNames
  className?: string
  borderRadius?: TBoxBorderRadius
}

export const AppBadge = ({
  label,
  icon,
  type,
  className,
  borderRadius = 's10',
  ...props
}: Props) => {
  return (
    <AppBox
      className={`app-badge ${className ? className : ''}`.trim()}
      alignItems="center"
      flexDirection="row"
      gap="s4"
      backgroundColor={type}
      paddingY="s4"
      paddingX="s12"
      borderRadius={borderRadius}
      {...props}
    >
      {icon && <AppIcon className="app-badge__icon" icon={icon} />}
      <span className="app-badge__label">{label}</span>
    </AppBox>
  )
}
