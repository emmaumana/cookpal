import './index.scss'

import { AppBox } from '../AppBox'
import { SelectHTMLAttributes } from 'react'

interface SelectOption {
  label: string
  value: string
}

interface Props extends SelectHTMLAttributes<HTMLSelectElement> {
  id: string
  name: string
  label?: string
  placeholder?: string
  options: SelectOption[]
}

export const AppSelectField = ({ id, label, name, options, ...props }: Props) => {
  return (
    <AppBox
      className="app-select"
      flexDirection="column"
      backgroundColor="white"
      style={{ boxShadow: '0px 0px 10px rgba(0, 0, 0, 0.15)' }}
    >
      {label && <label className="app-select__label">Search for recipes</label>}
      <AppBox alignItems="center" gap="s12">
        <select className="app-select__control" name={name} id={id} {...props}>
          {options.map((option) => (
            <option key={option.label} value={option.value}>
              {option.label}
            </option>
          ))}
        </select>
      </AppBox>
    </AppBox>
  )
}
