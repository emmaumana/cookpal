# typed: false

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `graphiql-rails` gem.
# Please instead update this file by running `bin/tapioca gem graphiql-rails`.


# source://graphiql-rails//lib/graphiql/rails/config.rb#1
module GraphiQL; end

# source://graphiql-rails//lib/graphiql/rails/config.rb#2
module GraphiQL::Rails
  class << self
    # Returns the value of attribute config.
    #
    # source://graphiql-rails//lib/graphiql/rails.rb#21
    def config; end

    # Sets the attribute config
    #
    # @param value the value to set the attribute config to.
    #
    # source://graphiql-rails//lib/graphiql/rails.rb#21
    def config=(_arg0); end

    # source://railties/7.2.1/lib/rails/engine.rb#412
    def railtie_helpers_paths; end

    # source://railties/7.2.1/lib/rails/engine.rb#395
    def railtie_namespace; end

    # source://railties/7.2.1/lib/rails/engine.rb#416
    def railtie_routes_url_helpers(include_path_helpers = T.unsafe(nil)); end

    # source://railties/7.2.1/lib/rails/engine.rb#401
    def table_name_prefix; end

    # source://railties/7.2.1/lib/rails/engine.rb#408
    def use_relative_model_naming?; end
  end
end

# source://graphiql-rails//lib/graphiql/rails/config.rb#3
class GraphiQL::Rails::Config
  # @return [Config] a new instance of Config
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#20
  def initialize(query_params: T.unsafe(nil), initial_query: T.unsafe(nil), title: T.unsafe(nil), logo: T.unsafe(nil), csrf: T.unsafe(nil), headers: T.unsafe(nil), input_value_deprecation: T.unsafe(nil)); end

  # Returns the value of attribute csrf.
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#10
  def csrf; end

  # Sets the attribute csrf
  #
  # @param value the value to set the attribute csrf to.
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#10
  def csrf=(_arg0); end

  # Returns the value of attribute header_editor_enabled.
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#10
  def header_editor_enabled; end

  # Sets the attribute header_editor_enabled
  #
  # @param value the value to set the attribute header_editor_enabled to.
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#10
  def header_editor_enabled=(_arg0); end

  # @example Adding a header to the request
  #   config.headers["My-Header"] = -> (view_context) { "My-Value" }
  # @return [Hash<String => Proc>] Keys are headers to include in GraphQL requests, values are `->(view_context) { ... }` procs to determin values
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#8
  def headers; end

  # @example Adding a header to the request
  #   config.headers["My-Header"] = -> (view_context) { "My-Value" }
  # @return [Hash<String => Proc>] Keys are headers to include in GraphQL requests, values are `->(view_context) { ... }` procs to determin values
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#8
  def headers=(_arg0); end

  # Returns the value of attribute initial_query.
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#10
  def initial_query; end

  # Sets the attribute initial_query
  #
  # @param value the value to set the attribute initial_query to.
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#10
  def initial_query=(_arg0); end

  # Returns the value of attribute input_value_deprecation.
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#10
  def input_value_deprecation; end

  # Sets the attribute input_value_deprecation
  #
  # @param value the value to set the attribute input_value_deprecation to.
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#10
  def input_value_deprecation=(_arg0); end

  # Returns the value of attribute logo.
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#10
  def logo; end

  # Sets the attribute logo
  #
  # @param value the value to set the attribute logo to.
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#10
  def logo=(_arg0); end

  # Returns the value of attribute query_params.
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#10
  def query_params; end

  # Sets the attribute query_params
  #
  # @param value the value to set the attribute query_params to.
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#10
  def query_params=(_arg0); end

  # Call defined procs, add CSRF token if specified
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#31
  def resolve_headers(view_context); end

  # Returns the value of attribute title.
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#10
  def title; end

  # Sets the attribute title
  #
  # @param value the value to set the attribute title to.
  #
  # source://graphiql-rails//lib/graphiql/rails/config.rb#10
  def title=(_arg0); end
end

# source://graphiql-rails//lib/graphiql/rails/config.rb#16
GraphiQL::Rails::Config::CSRF_TOKEN_HEADER = T.let(T.unsafe(nil), Hash)

# source://graphiql-rails//lib/graphiql/rails/config.rb#12
GraphiQL::Rails::Config::DEFAULT_HEADERS = T.let(T.unsafe(nil), Hash)

class GraphiQL::Rails::EditorsController < ::ActionController::Base
  def graphql_endpoint_path; end
  def show; end

  private

  # source://actionview/7.2.1/lib/action_view/layouts.rb#328
  def _layout(lookup_context, formats); end

  def _layout_from_proc; end

  class << self
    # source://actionpack/7.2.1/lib/abstract_controller/helpers.rb#13
    def _helper_methods; end

    # source://actionpack/7.2.1/lib/action_controller/metal.rb#288
    def middleware_stack; end
  end
end

module GraphiQL::Rails::EditorsController::HelperMethods
  include ::ActionText::ContentHelper
  include ::ActionText::TagHelper
  include ::Importmap::ImportmapTagsHelper
  include ::Turbo::DriveHelper
  include ::Turbo::FramesHelper
  include ::Turbo::IncludesHelper
  include ::Turbo::StreamsHelper
  include ::ActionView::Helpers::CaptureHelper
  include ::ActionView::Helpers::OutputSafetyHelper
  include ::ActionView::Helpers::TagHelper
  include ::Turbo::Streams::ActionHelper
  include ::ActionController::Base::HelperMethods

  def graphql_endpoint_path(*_arg0, **_arg1, &_arg2); end
end

# source://graphiql-rails//lib/graphiql/rails/engine.rb#3
class GraphiQL::Rails::Engine < ::Rails::Engine
  class << self
    # source://activesupport/7.2.1/lib/active_support/callbacks.rb#70
    def __callbacks; end
  end
end

# source://graphiql-rails//lib/graphiql/rails/version.rb#3
GraphiQL::Rails::VERSION = T.let(T.unsafe(nil), String)
