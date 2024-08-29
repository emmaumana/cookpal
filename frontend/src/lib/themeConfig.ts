export const themeLightColors = {
  pinkLight: '#fbe5e7',
  goldLight: '#f9ebc9',
  limeLight: '#f0f7e2',
  peachLight: '#f9e6c9',
}

export const brandColors = {
  primary: '#28455b',
  secondary: '#a5b2bc',
  secondaryLight: '#caced3',
  secondaryLighter: '#faf9fb',
  accent: '#509e2f',
  accentLight: '#d6e46c',
  white: '#fff',
  lime: '#d6f498',
  limeDark: '#d6e46c',
  pink: '#fdc6c7',
  gold: '#f7d67b',
  purple: '#f4a7fe',
  purpleLight: '#f7d9fc',
  peach: '#f7c97a',
  ...themeLightColors,
}

export const contrastPairing = {
  limeLight: 'lime',
  pinkLight: 'pink',
  goldLight: 'gold',
  purpleLight: 'purple',
  peachLight: 'peach',
}

// Layout
export type TBoxDisplay = 'flex' | 'grid' | 'inline-block' | 'block'
export type TBoxOverflow = 'hidden' | 'auto' | 'scroll' | 'visible'
export type TBoxZIndex = '0' | '10' | '20' | '30' | '40' | '50'
export type TBoxPadding =
  | 's0'
  | 's2'
  | 's4'
  | 's6'
  | 's8'
  | 's12'
  | 's16'
  | 's24'
  | 's32'
  | 's40'
  | 's60'
  | 's120'

export type TBoxBorderRadius = 's0' | 's4' | 's8' | 's10' | 's16' | 's20' | 's25' | 's30' | 's100'
export type TBoxSize =
  | 'full'
  | 'half'
  | 'one-third'
  | 's60'
  | 's80'
  | 's90'
  | 's100'
  | 's120'
  | 's220'
  | 's240'
  | 's280'
  | 's300'
  | 's340'

// Color
export type TBoxColor = keyof typeof brandColors

// Flexbox
export type TFlexDirection = 'column' | 'row' | 'column-reverse' | 'row-reverse'
export type TFlexWrap = 'wrap' | 'nowrap' | 'wrap-reverse'

// Grid
export type TGridColumns = 'grid-cols-1' | 'grid-cols-2' | 'grid-cols-3' | 'grid-cols-4'
export type TGridAutoColumns = 'grid-auto-1' | 'grid-auto-2' | 'grid-auto-3' | 'grid-auto-4'

// Grid & Flexbox
export type TBoxGap =
  | 's0'
  | 's4'
  | 's6'
  | 's8'
  | 's12'
  | 's24'
  | 's32'
  | 's40'
  | 's50'
  | 's60'
  | 's80'
export type TAlignItems = 'flex-start' | 'center' | 'flex-end' | 'stretch'
export type TJustifyContent = 'flex-start' | 'center' | 'space-between'
export type TAlignContent = 'flex-start' | 'center' | 'flex-end' | 'space-between' | 'stretch'
export type TJustifyItems = 'start' | 'center' | 'end' | 'stretch'
