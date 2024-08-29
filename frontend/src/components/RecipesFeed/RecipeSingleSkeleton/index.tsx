import { AppBox } from 'components/ui/AppBox'
import ContentLoader from 'react-content-loader'

export const RecipeSingleSkeleton = () => {
  const cardWidth = 343
  const cardHeight = 194
  const coverWidth = 319
  const xAxisRadius = 5
  const yAxisRadius = 5

  return (
    <AppBox alignItems="flex-start">
      <ContentLoader
        width={cardWidth}
        height={cardHeight}
        viewBox={`0 0 ${cardWidth} ${cardHeight}`}
        backgroundColor="#d0d0d045"
        foregroundColor="#dbdbdb"
      >
        {/* Border layout */}
        {/* X top axis / X bottom axis */}
        <rect x="0" y="0" rx={xAxisRadius} ry={xAxisRadius} width="343" height="3" />
        <rect x="0" y="192" rx={xAxisRadius} ry={xAxisRadius} width="343" height="3" />
        {/* Y left axis / Y right axis */}
        <rect x="0" y="0" rx={yAxisRadius} ry={yAxisRadius} width="3" height="195" />
        <rect x={cardWidth - 3} y="0" rx={yAxisRadius} ry={yAxisRadius} width="3" height="195" />
        {/* Image */}
        <rect x="12" y="14" rx="20" ry="20" width={coverWidth} height="90" />
        {/* Title */}
        <rect x="14" y="115" rx="4" ry="4" width="140" height="14" />
        {/* Rating */}
        <rect x="291" y="115" rx="4" ry="4" width="38" height="14" />
        {/* Category */}
        <rect x="14" y="137" rx="4" ry="4" width="60" height="10" />
        {/* Badge */}
        <rect x="14" y="160" rx="10" ry="10" width="110" height="22" />
      </ContentLoader>
    </AppBox>
  )
}
