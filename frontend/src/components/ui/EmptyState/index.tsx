import { AppBox } from '../AppBox'
import { AppIcon } from '../AppIcon'

interface Props {
  title: string
}

export const EmptyState = ({ title }: Props) => {
  return (
    <AppBox
      className="empty-state"
      width="full"
      alignItems="center"
      justifyContent="center"
      height="full"
      gap="s12"
      style={{ fontSize: '1.25rem' }}
    >
      <p className="empty-state__label">{title}</p>
      <AppIcon icon="AiFillDislike" />
    </AppBox>
  )
}
