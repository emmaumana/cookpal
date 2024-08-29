import { AiIcons, Io5Icons, IoIcons, TIconNames } from 'lib/icons'
import { TBoxColor, brandColors } from 'lib/themeConfig'

import { HTMLAttributes } from 'react'

interface Props extends HTMLAttributes<SVGElement> {
  icon: TIconNames
  size?: number
  color?: TBoxColor
}

export const AppIcon = ({ icon, size, color, ...props }: Props) => {
  const IconComponent =
    icon.startsWith('IoIos') || icon.startsWith('IoMd')
      ? IoIcons[icon as keyof typeof IoIcons]
      : icon.startsWith('Io')
        ? Io5Icons[icon as keyof typeof Io5Icons]
        : AiIcons[icon as keyof typeof AiIcons]

  return <IconComponent size={size} color={color ? brandColors[color] : ''} {...props} />
}
