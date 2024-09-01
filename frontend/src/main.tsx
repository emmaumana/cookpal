import './index.scss'

import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client'

import App from './App.tsx'
import { BrowserRouter } from 'react-router-dom'
import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'

const client = new ApolloClient({
  uri: `${import.meta.env.VITE_BASE_URL}/graphql`,
  cache: new InMemoryCache({
    // See: https://www.apollographql.com/docs/react/pagination/core-api/#defining-a-field-policy
    typePolicies: {
      Query: {
        fields: {
          recipesConnection: {
            keyArgs: ['ids', 'ratingSort', 'totalTimeSort', 'search'], // Disables the distinction between query results with different variables
            merge(existing = { edges: [], pageInfo: {} }, incoming) {
              return !existing.edges
                ? {
                    // Fist load we merge all
                    ...incoming,
                    edges: incoming.edges,
                  }
                : incoming.pageInfo.endCursor === existing.pageInfo.endCursor
                  ? {
                      // already loaded data, no imcoming
                      ...existing,
                      edges: existing.edges,
                    }
                  : {
                      // Combinining the existing edges with the incoming ones to make pagination work
                      ...incoming,
                      edges: [...existing.edges, ...incoming.edges],
                    }
            },
          },
        },
      },
    },
  }),
})

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <BrowserRouter>
      <ApolloProvider client={client}>
        <App />
      </ApolloProvider>
    </BrowserRouter>
  </StrictMode>,
)
