# typed: strict

module Api
  module V1
    class BasePresenter
      extend T::Sig
      extend T::Helpers
      abstract!

      Serialized = T.type_alias { T::Hash[Symbol, T.untyped] }

      private

      T::Sig::WithoutRuntime.sig { abstract.returns(Serialized) }
      def serialize; end
    end
  end
end
