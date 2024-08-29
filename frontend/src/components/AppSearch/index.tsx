import './index.scss'

import { useEffect, useState } from 'react'

import { AppBox } from 'components/ui/AppBox'
import { AppInputField } from 'components/ui/AppInputField'
import { useDebounce } from 'use-debounce'

interface Props {
  totalFound: number | null
  onSearch: (query: string) => void
}

export const AppSearch = ({ totalFound, onSearch }: Props) => {
  const [searchQuery, setSearchQuery] = useState<string>('')
  const [debouncedSearchQuery] = useDebounce(searchQuery, 700)

  // eslint-disable-next-line react-hooks/exhaustive-deps
  useEffect(() => onSearch(debouncedSearchQuery), [debouncedSearchQuery])

  return (
    <AppBox className="app-search" flexDirection="column" gap="s8">
      <AppInputField
        icon="IoSearch"
        iconPosition="left"
        placeholder="What's in your kitchen? (e.g., chicken, tomatoes, garlic)..."
        onChange={(e) => setSearchQuery(e.target.value)}
      />
      {totalFound !== null && debouncedSearchQuery && `Total found: ${totalFound}`}
    </AppBox>
  )
}
