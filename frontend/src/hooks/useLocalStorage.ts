import { useEffect, useState } from 'react'

type StorageKey = 'favorites' | 'searches'

export const useLocalStorage = (storage: StorageKey) => {
  const initialize = () => setStorageValues(localStorage.getItem(storage)?.split(',') || [])
  const [storageValues, setStorageValues] = useState<unknown[]>([])

  const addItemToStore = (item: unknown) => {
    const newValues = [...storageValues, item]
    mergeValues(newValues)
  }

  const addItemsToStore = (items: unknown) => {
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

  const mergeValues = (newValues: unknown[]) => {
    setStorageValues(newValues)
    localStorage.setItem(storage, newValues.join(','))
  }

  const storeIncludesItem = (item: unknown) => storageValues.includes(item)
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
