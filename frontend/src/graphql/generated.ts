import { gql } from '@apollo/client';
import * as Apollo from '@apollo/client';
export type Maybe<T> = T | null;
export type InputMaybe<T> = Maybe<T>;
export type Exact<T extends { [key: string]: unknown }> = { [K in keyof T]: T[K] };
export type MakeOptional<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]?: Maybe<T[SubKey]> };
export type MakeMaybe<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]: Maybe<T[SubKey]> };
export type MakeEmpty<T extends { [key: string]: unknown }, K extends keyof T> = { [_ in K]?: never };
export type Incremental<T> = T | { [P in keyof T]?: P extends ' $fragmentName' | '__typename' ? T[P] : never };
const defaultOptions = {} as const;
/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
  ID: { input: string; output: string; }
  String: { input: string; output: string; }
  Boolean: { input: boolean; output: boolean; }
  Int: { input: number; output: number; }
  Float: { input: number; output: number; }
  /** An ISO 8601-encoded datetime */
  ISO8601DateTime: { input: any; output: any; }
};

export type Category = {
  __typename?: 'Category';
  createdAt: Scalars['ISO8601DateTime']['output'];
  id: Scalars['ID']['output'];
  name: Scalars['String']['output'];
  slug: Scalars['String']['output'];
  updatedAt: Scalars['ISO8601DateTime']['output'];
};

/** The connection type for Category. */
export type CategoryConnection = {
  __typename?: 'CategoryConnection';
  /** A list of edges. */
  edges?: Maybe<Array<Maybe<CategoryEdge>>>;
  /** A list of nodes. */
  nodes?: Maybe<Array<Maybe<Category>>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  recordCount?: Maybe<Scalars['Int']['output']>;
};

/** Autogenerated input type of CategoryCreate */
export type CategoryCreateInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  name: Scalars['String']['input'];
  recipeIds?: InputMaybe<Array<Scalars['ID']['input']>>;
};

/** Autogenerated return type of CategoryCreate. */
export type CategoryCreatePayload = {
  __typename?: 'CategoryCreatePayload';
  category?: Maybe<Category>;
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  errors: Array<Scalars['String']['output']>;
};

/** Autogenerated input type of CategoryDelete */
export type CategoryDeleteInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  id: Scalars['ID']['input'];
};

/** Autogenerated return type of CategoryDelete. */
export type CategoryDeletePayload = {
  __typename?: 'CategoryDeletePayload';
  category: Category;
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  errors: Array<Scalars['String']['output']>;
};

/** An edge in a connection. */
export type CategoryEdge = {
  __typename?: 'CategoryEdge';
  /** A cursor for use in pagination. */
  cursor: Scalars['String']['output'];
  /** The item at the end of the edge. */
  node?: Maybe<Category>;
};

/** Autogenerated input type of CategoryUpdate */
export type CategoryUpdateInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  id: Scalars['ID']['input'];
  name: Scalars['String']['input'];
};

/** Autogenerated return type of CategoryUpdate. */
export type CategoryUpdatePayload = {
  __typename?: 'CategoryUpdatePayload';
  category: Category;
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  errors: Array<Scalars['String']['output']>;
};

export type Ingredient = {
  __typename?: 'Ingredient';
  createdAt: Scalars['ISO8601DateTime']['output'];
  id: Scalars['ID']['output'];
  title: Scalars['String']['output'];
  updatedAt: Scalars['ISO8601DateTime']['output'];
};

/** The connection type for Ingredient. */
export type IngredientConnection = {
  __typename?: 'IngredientConnection';
  /** A list of edges. */
  edges?: Maybe<Array<Maybe<IngredientEdge>>>;
  /** A list of nodes. */
  nodes?: Maybe<Array<Maybe<Ingredient>>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  recordCount?: Maybe<Scalars['Int']['output']>;
};

/** An edge in a connection. */
export type IngredientEdge = {
  __typename?: 'IngredientEdge';
  /** A cursor for use in pagination. */
  cursor: Scalars['String']['output'];
  /** The item at the end of the edge. */
  node?: Maybe<Ingredient>;
};

export type Mutation = {
  __typename?: 'Mutation';
  /** Creates a category. Optionally, you can pass an array of recipe IDs to associate with the category. */
  categoryCreate?: Maybe<CategoryCreatePayload>;
  /** Deletes a category by ID */
  categoryDelete?: Maybe<CategoryDeletePayload>;
  /** Updates a category's name by id */
  categoryUpdate?: Maybe<CategoryUpdatePayload>;
};


export type MutationCategoryCreateArgs = {
  input: CategoryCreateInput;
};


export type MutationCategoryDeleteArgs = {
  input: CategoryDeleteInput;
};


export type MutationCategoryUpdateArgs = {
  input: CategoryUpdateInput;
};

/** Information about pagination in a connection. */
export type PageInfo = {
  __typename?: 'PageInfo';
  /** When paginating forwards, the cursor to continue. */
  endCursor?: Maybe<Scalars['String']['output']>;
  /** When paginating forwards, are there more items? */
  hasNextPage: Scalars['Boolean']['output'];
  /** When paginating backwards, are there more items? */
  hasPreviousPage: Scalars['Boolean']['output'];
  /** When paginating backwards, the cursor to continue. */
  startCursor?: Maybe<Scalars['String']['output']>;
};

export type Query = {
  __typename?: 'Query';
  category: Category;
  ingredient: Ingredient;
  recipe: Recipe;
  recipesConnection: RecipeConnection;
};


export type QueryCategoryArgs = {
  id: Scalars['ID']['input'];
};


export type QueryIngredientArgs = {
  id: Scalars['ID']['input'];
};


export type QueryRecipeArgs = {
  id: Scalars['ID']['input'];
};


export type QueryRecipesConnectionArgs = {
  after?: InputMaybe<Scalars['String']['input']>;
  before?: InputMaybe<Scalars['String']['input']>;
  first?: InputMaybe<Scalars['Int']['input']>;
  ids?: InputMaybe<Array<Scalars['ID']['input']>>;
  last?: InputMaybe<Scalars['Int']['input']>;
  ratingSort?: InputMaybe<Scalars['String']['input']>;
  search?: InputMaybe<Scalars['String']['input']>;
  totalTimeSort?: InputMaybe<Scalars['String']['input']>;
};

export type Recipe = {
  __typename?: 'Recipe';
  categories?: Maybe<CategoryConnection>;
  createdAt: Scalars['ISO8601DateTime']['output'];
  id: Scalars['ID']['output'];
  imageUrl?: Maybe<Scalars['String']['output']>;
  ingredients?: Maybe<IngredientConnection>;
  rating?: Maybe<Scalars['Float']['output']>;
  slug: Scalars['String']['output'];
  title: Scalars['String']['output'];
  totalTime?: Maybe<Scalars['Int']['output']>;
  updatedAt: Scalars['ISO8601DateTime']['output'];
};


export type RecipeCategoriesArgs = {
  after?: InputMaybe<Scalars['String']['input']>;
  before?: InputMaybe<Scalars['String']['input']>;
  first?: InputMaybe<Scalars['Int']['input']>;
  last?: InputMaybe<Scalars['Int']['input']>;
};


export type RecipeIngredientsArgs = {
  after?: InputMaybe<Scalars['String']['input']>;
  before?: InputMaybe<Scalars['String']['input']>;
  first?: InputMaybe<Scalars['Int']['input']>;
  last?: InputMaybe<Scalars['Int']['input']>;
};

/** The connection type for Recipe. */
export type RecipeConnection = {
  __typename?: 'RecipeConnection';
  /** A list of edges. */
  edges?: Maybe<Array<Maybe<RecipeEdge>>>;
  /** A list of nodes. */
  nodes?: Maybe<Array<Maybe<Recipe>>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  recordCount?: Maybe<Scalars['Int']['output']>;
};

/** An edge in a connection. */
export type RecipeEdge = {
  __typename?: 'RecipeEdge';
  /** A cursor for use in pagination. */
  cursor: Scalars['String']['output'];
  /** The item at the end of the edge. */
  node?: Maybe<Recipe>;
};

export type CreateCategoryMutationVariables = Exact<{
  name: Scalars['String']['input'];
  recipeIds?: InputMaybe<Array<Scalars['ID']['input']> | Scalars['ID']['input']>;
}>;


export type CreateCategoryMutation = { __typename?: 'Mutation', categoryCreate?: { __typename?: 'CategoryCreatePayload', errors: Array<string>, category?: { __typename?: 'Category', id: string, name: string } | null } | null };

export type UpdateCategoryMutationVariables = Exact<{
  id: Scalars['ID']['input'];
  name: Scalars['String']['input'];
}>;


export type UpdateCategoryMutation = { __typename?: 'Mutation', categoryUpdate?: { __typename?: 'CategoryUpdatePayload', errors: Array<string>, category: { __typename?: 'Category', id: string, name: string } } | null };

export type DeleteCategoryMutationVariables = Exact<{
  id: Scalars['ID']['input'];
}>;


export type DeleteCategoryMutation = { __typename?: 'Mutation', categoryDelete?: { __typename?: 'CategoryDeletePayload', errors: Array<string>, category: { __typename?: 'Category', id: string, name: string } } | null };

export type RecipeDetailFragment = { __typename?: 'Recipe', id: string, title: string, slug: string, totalTime?: number | null, imageUrl?: string | null, rating?: number | null, createdAt: any, categories?: { __typename?: 'CategoryConnection', nodes?: Array<{ __typename?: 'Category', id: string, name: string } | null> | null } | null, ingredients?: { __typename?: 'IngredientConnection', nodes?: Array<{ __typename?: 'Ingredient', id: string, title: string } | null> | null } | null };

export type GetRecipesQueryVariables = Exact<{
  ids?: InputMaybe<Array<Scalars['ID']['input']> | Scalars['ID']['input']>;
  search?: InputMaybe<Scalars['String']['input']>;
  ratingSort?: InputMaybe<Scalars['String']['input']>;
  totalTimeSort?: InputMaybe<Scalars['String']['input']>;
  after?: InputMaybe<Scalars['String']['input']>;
}>;


export type GetRecipesQuery = { __typename?: 'Query', recipesConnection: { __typename?: 'RecipeConnection', recordCount?: number | null, edges?: Array<{ __typename?: 'RecipeEdge', cursor: string, node?: { __typename?: 'Recipe', id: string, title: string, slug: string, totalTime?: number | null, imageUrl?: string | null, rating?: number | null, createdAt: any, categories?: { __typename?: 'CategoryConnection', nodes?: Array<{ __typename?: 'Category', id: string, name: string } | null> | null } | null, ingredients?: { __typename?: 'IngredientConnection', nodes?: Array<{ __typename?: 'Ingredient', id: string, title: string } | null> | null } | null } | null } | null> | null, pageInfo: { __typename?: 'PageInfo', hasNextPage: boolean, hasPreviousPage: boolean, startCursor?: string | null, endCursor?: string | null } } };

export type GetRecipeQueryVariables = Exact<{
  id: Scalars['ID']['input'];
}>;


export type GetRecipeQuery = { __typename?: 'Query', recipe: { __typename?: 'Recipe', id: string, title: string, slug: string, totalTime?: number | null, imageUrl?: string | null, rating?: number | null, createdAt: any, categories?: { __typename?: 'CategoryConnection', nodes?: Array<{ __typename?: 'Category', id: string, name: string } | null> | null } | null, ingredients?: { __typename?: 'IngredientConnection', nodes?: Array<{ __typename?: 'Ingredient', id: string, title: string } | null> | null } | null } };

export const RecipeDetailFragmentDoc = gql`
    fragment RecipeDetail on Recipe {
  id
  title
  slug
  totalTime
  imageUrl
  rating
  createdAt
  categories {
    nodes {
      id
      name
    }
  }
  ingredients {
    nodes {
      id
      title
    }
  }
}
    `;
export const CreateCategoryDocument = gql`
    mutation CreateCategory($name: String!, $recipeIds: [ID!]) {
  categoryCreate(input: {name: $name, recipeIds: $recipeIds}) {
    category {
      id
      name
    }
    errors
  }
}
    `;
export type CreateCategoryMutationFn = Apollo.MutationFunction<CreateCategoryMutation, CreateCategoryMutationVariables>;

/**
 * __useCreateCategoryMutation__
 *
 * To run a mutation, you first call `useCreateCategoryMutation` within a React component and pass it any options that fit your needs.
 * When your component renders, `useCreateCategoryMutation` returns a tuple that includes:
 * - A mutate function that you can call at any time to execute the mutation
 * - An object with fields that represent the current status of the mutation's execution
 *
 * @param baseOptions options that will be passed into the mutation, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options-2;
 *
 * @example
 * const [createCategoryMutation, { data, loading, error }] = useCreateCategoryMutation({
 *   variables: {
 *      name: // value for 'name'
 *      recipeIds: // value for 'recipeIds'
 *   },
 * });
 */
export function useCreateCategoryMutation(baseOptions?: Apollo.MutationHookOptions<CreateCategoryMutation, CreateCategoryMutationVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useMutation<CreateCategoryMutation, CreateCategoryMutationVariables>(CreateCategoryDocument, options);
      }
export type CreateCategoryMutationHookResult = ReturnType<typeof useCreateCategoryMutation>;
export type CreateCategoryMutationResult = Apollo.MutationResult<CreateCategoryMutation>;
export type CreateCategoryMutationOptions = Apollo.BaseMutationOptions<CreateCategoryMutation, CreateCategoryMutationVariables>;
export const UpdateCategoryDocument = gql`
    mutation UpdateCategory($id: ID!, $name: String!) {
  categoryUpdate(input: {id: $id, name: $name}) {
    category {
      id
      name
    }
    errors
  }
}
    `;
export type UpdateCategoryMutationFn = Apollo.MutationFunction<UpdateCategoryMutation, UpdateCategoryMutationVariables>;

/**
 * __useUpdateCategoryMutation__
 *
 * To run a mutation, you first call `useUpdateCategoryMutation` within a React component and pass it any options that fit your needs.
 * When your component renders, `useUpdateCategoryMutation` returns a tuple that includes:
 * - A mutate function that you can call at any time to execute the mutation
 * - An object with fields that represent the current status of the mutation's execution
 *
 * @param baseOptions options that will be passed into the mutation, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options-2;
 *
 * @example
 * const [updateCategoryMutation, { data, loading, error }] = useUpdateCategoryMutation({
 *   variables: {
 *      id: // value for 'id'
 *      name: // value for 'name'
 *   },
 * });
 */
export function useUpdateCategoryMutation(baseOptions?: Apollo.MutationHookOptions<UpdateCategoryMutation, UpdateCategoryMutationVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useMutation<UpdateCategoryMutation, UpdateCategoryMutationVariables>(UpdateCategoryDocument, options);
      }
export type UpdateCategoryMutationHookResult = ReturnType<typeof useUpdateCategoryMutation>;
export type UpdateCategoryMutationResult = Apollo.MutationResult<UpdateCategoryMutation>;
export type UpdateCategoryMutationOptions = Apollo.BaseMutationOptions<UpdateCategoryMutation, UpdateCategoryMutationVariables>;
export const DeleteCategoryDocument = gql`
    mutation DeleteCategory($id: ID!) {
  categoryDelete(input: {id: $id}) {
    category {
      id
      name
    }
    errors
  }
}
    `;
export type DeleteCategoryMutationFn = Apollo.MutationFunction<DeleteCategoryMutation, DeleteCategoryMutationVariables>;

/**
 * __useDeleteCategoryMutation__
 *
 * To run a mutation, you first call `useDeleteCategoryMutation` within a React component and pass it any options that fit your needs.
 * When your component renders, `useDeleteCategoryMutation` returns a tuple that includes:
 * - A mutate function that you can call at any time to execute the mutation
 * - An object with fields that represent the current status of the mutation's execution
 *
 * @param baseOptions options that will be passed into the mutation, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options-2;
 *
 * @example
 * const [deleteCategoryMutation, { data, loading, error }] = useDeleteCategoryMutation({
 *   variables: {
 *      id: // value for 'id'
 *   },
 * });
 */
export function useDeleteCategoryMutation(baseOptions?: Apollo.MutationHookOptions<DeleteCategoryMutation, DeleteCategoryMutationVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useMutation<DeleteCategoryMutation, DeleteCategoryMutationVariables>(DeleteCategoryDocument, options);
      }
export type DeleteCategoryMutationHookResult = ReturnType<typeof useDeleteCategoryMutation>;
export type DeleteCategoryMutationResult = Apollo.MutationResult<DeleteCategoryMutation>;
export type DeleteCategoryMutationOptions = Apollo.BaseMutationOptions<DeleteCategoryMutation, DeleteCategoryMutationVariables>;
export const GetRecipesDocument = gql`
    query GetRecipes($ids: [ID!], $search: String, $ratingSort: String, $totalTimeSort: String, $after: String) {
  recipesConnection(
    ids: $ids
    search: $search
    ratingSort: $ratingSort
    totalTimeSort: $totalTimeSort
    after: $after
  ) {
    edges {
      cursor
      node {
        ...RecipeDetail
      }
    }
    pageInfo {
      hasNextPage
      hasPreviousPage
      startCursor
      endCursor
    }
    recordCount
  }
}
    ${RecipeDetailFragmentDoc}`;

/**
 * __useGetRecipesQuery__
 *
 * To run a query within a React component, call `useGetRecipesQuery` and pass it any options that fit your needs.
 * When your component renders, `useGetRecipesQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useGetRecipesQuery({
 *   variables: {
 *      ids: // value for 'ids'
 *      search: // value for 'search'
 *      ratingSort: // value for 'ratingSort'
 *      totalTimeSort: // value for 'totalTimeSort'
 *      after: // value for 'after'
 *   },
 * });
 */
export function useGetRecipesQuery(baseOptions?: Apollo.QueryHookOptions<GetRecipesQuery, GetRecipesQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<GetRecipesQuery, GetRecipesQueryVariables>(GetRecipesDocument, options);
      }
export function useGetRecipesLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<GetRecipesQuery, GetRecipesQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<GetRecipesQuery, GetRecipesQueryVariables>(GetRecipesDocument, options);
        }
export function useGetRecipesSuspenseQuery(baseOptions?: Apollo.SuspenseQueryHookOptions<GetRecipesQuery, GetRecipesQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useSuspenseQuery<GetRecipesQuery, GetRecipesQueryVariables>(GetRecipesDocument, options);
        }
export type GetRecipesQueryHookResult = ReturnType<typeof useGetRecipesQuery>;
export type GetRecipesLazyQueryHookResult = ReturnType<typeof useGetRecipesLazyQuery>;
export type GetRecipesSuspenseQueryHookResult = ReturnType<typeof useGetRecipesSuspenseQuery>;
export type GetRecipesQueryResult = Apollo.QueryResult<GetRecipesQuery, GetRecipesQueryVariables>;
export const GetRecipeDocument = gql`
    query GetRecipe($id: ID!) {
  recipe(id: $id) {
    ...RecipeDetail
  }
}
    ${RecipeDetailFragmentDoc}`;

/**
 * __useGetRecipeQuery__
 *
 * To run a query within a React component, call `useGetRecipeQuery` and pass it any options that fit your needs.
 * When your component renders, `useGetRecipeQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useGetRecipeQuery({
 *   variables: {
 *      id: // value for 'id'
 *   },
 * });
 */
export function useGetRecipeQuery(baseOptions: Apollo.QueryHookOptions<GetRecipeQuery, GetRecipeQueryVariables> & ({ variables: GetRecipeQueryVariables; skip?: boolean; } | { skip: boolean; }) ) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<GetRecipeQuery, GetRecipeQueryVariables>(GetRecipeDocument, options);
      }
export function useGetRecipeLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<GetRecipeQuery, GetRecipeQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<GetRecipeQuery, GetRecipeQueryVariables>(GetRecipeDocument, options);
        }
export function useGetRecipeSuspenseQuery(baseOptions?: Apollo.SuspenseQueryHookOptions<GetRecipeQuery, GetRecipeQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useSuspenseQuery<GetRecipeQuery, GetRecipeQueryVariables>(GetRecipeDocument, options);
        }
export type GetRecipeQueryHookResult = ReturnType<typeof useGetRecipeQuery>;
export type GetRecipeLazyQueryHookResult = ReturnType<typeof useGetRecipeLazyQuery>;
export type GetRecipeSuspenseQueryHookResult = ReturnType<typeof useGetRecipeSuspenseQuery>;
export type GetRecipeQueryResult = Apollo.QueryResult<GetRecipeQuery, GetRecipeQueryVariables>;