import { AppBox } from 'components/ui/AppBox'
import { AppContainer } from 'components/layout/AppContainer'
import { AppSidebar } from 'components/layout/AppSidebar'
import { Router } from 'routes'

function App() {
  return (
    <>
      <AppContainer>
        <AppSidebar />
        <AppBox
          className="app-content"
          flexDirection="column"
          backgroundColor="secondaryLighter"
          padding="s40"
          overflow="hidden"
        >
          <Router />
        </AppBox>
      </AppContainer>
    </>
  )
}

export default App
