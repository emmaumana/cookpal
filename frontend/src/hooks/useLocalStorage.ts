import { useEffect, useState } from 'react'

type StorageKey = 'favorites' | 'searches'

export const useLocalStorage = (storage: StorageKey) => {
  const initialize = () => setStorageValues(localStorage.getItem(storage)?.split(',') || [])
  const [storageValues, setStorageValues] = useState<string[]>([])

  const addItemToStore = (item: string) => {
    const newValues = [...storageValues, item]
    mergeValues(newValues)
  }

  const addItemsToStore = (items: string) => {
    const newValues = [items]
    mergeValues(newValues)
  }

  const removeItemFromStore = (item: unknown) => {
    const newValues = [...storageValues.filter((value) => value != item)]
    mergeValues(newValues)
  }

  const clearStorage = () => {
    localStorage.removeItem(storage)
    setStorageValues([])
  }

  const mergeValues = (newValues: string[]) => {
    setStorageValues(newValues)
    localStorage.setItem(storage, newValues.join(','))
  }

  const storeIncludesItem = (item: string) => storageValues.includes(item)
  const refetchStorage = () => initialize()

  useEffect(() => {
    initialize()
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [])

  return {
    storageValues,
    addItemToStore,
    removeItemFromStore,
    storeIncludesItem,
    refetchStorage,
    clearStorage,
    addItemsToStore,
  }
}
