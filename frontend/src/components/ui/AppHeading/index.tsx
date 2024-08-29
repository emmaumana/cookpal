import { AppBox } from '../AppBox'

interface Props {
  title: string
  subtitle?: string
}

export const AppHeading = ({ title, subtitle }: Props) => {
  return (
    <AppBox flexDirection="column" className="app-heading font-primary" gap="s8">
      <h1 className="app-heading__title">{title}</h1>
      {subtitle && <p className="app-heading__subtitle">{subtitle}</p>}
    </AppBox>
  )
}
