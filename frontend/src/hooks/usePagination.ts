import { useState } from 'react'

interface Props {
  itemsPerPage: number
  totalLoadedCount: number
  totalConnectionCount: number
}

export const usePagination = ({ itemsPerPage, totalLoadedCount, totalConnectionCount }: Props) => {
  const [currentPage, setCurrentPage] = useState(1)
  const hasNextPage = totalConnectionCount / itemsPerPage > currentPage
  const hasPreviousPage = currentPage > 1
  const lastIndexItem = itemsPerPage * currentPage
  const firstIndexItem = !hasPreviousPage ? 0 : lastIndexItem - itemsPerPage
  const haveNeededItemsLoaded = !hasNextPage || lastIndexItem < totalLoadedCount

  const resetPagination = () => setCurrentPage(1)

  const nextPage = () => {
    if (!hasNextPage) return
    setCurrentPage(currentPage + 1)
  }

  const previousPage = () => {
    if (!hasPreviousPage) return

    setCurrentPage(currentPage - 1)
  }

  return {
    nextPage,
    previousPage,
    resetPagination,
    hasNextPage,
    hasPreviousPage,
    lastIndexItem,
    firstIndexItem,
    haveNeededItemsLoaded,
  }
}
