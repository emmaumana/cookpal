import './index.scss'

import { useEffect, useState } from 'react'

import { AppBox } from 'components/ui/AppBox'
import { AppInputField } from 'components/ui/AppInputField'
import { useDebounce } from 'use-debounce'
import { useLocalStorage } from 'hooks/useLocalStorage'

interface Props {
  totalFound: number | null
  onSearch: (query: string) => void
}

export const AppSearch = ({ totalFound, onSearch }: Props) => {
  const [searchQuery, setSearchQuery] = useState<string>('')
  const [debouncedSearchQuery] = useDebounce(searchQuery, 700)
  const { addItemsToStore, clearStorage } = useLocalStorage('searches')

  useEffect(() => {
    onSearch(debouncedSearchQuery)
    clearStorage()
    if (debouncedSearchQuery) addItemsToStore(debouncedSearchQuery.replace(', ', ','))
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [debouncedSearchQuery])

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
