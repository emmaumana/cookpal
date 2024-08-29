module Resolvers
  class BaseResolver < GraphQL::Schema::Resolver
    extend T::Sig
  end
end
