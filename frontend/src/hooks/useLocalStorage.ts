import { useEffect, useState } from 'react'

type StorageKey = 'favorites' | 'searches'

export const useLocalStorage = (storage: StorageKey) => {
  const initialize = () => setStorageValues(localStorage.getItem(storage)?.split(',') || [])
  const [storageValues, setStorageValues] = useState<unknown[]>([])

  const addItemToStore = (item: unknown) => {
    const newValues = [...storageValues, item]
    setStorageValues(newValues)
    mergeStorageValues(newValues)
  }

  const removeItemFromStore = (item: unknown) => {
    const newValues = [...storageValues.filter((value) => value != item)]
    setStorageValues(newValues)
    mergeStorageValues(newValues)
  }

  const storeIncludesItem = (item: unknown) => storageValues.includes(item)

  const mergeStorageValues = (newValues: unknown[]) =>
    localStorage.setItem(storage, newValues.join(','))

  const refetchStorage = () => {
    initialize()
  }

  useEffect(() => {
    initialize()
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [])

  return { storageValues, addItemToStore, removeItemFromStore, storeIncludesItem, refetchStorage }
}
