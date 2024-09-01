# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Category`.
# Please instead update this file by running `bin/tapioca dsl Category`.


class Category
  include GeneratedAssociationMethods
  include GeneratedAttributeMethods
  extend CommonRelationMethods
  extend GeneratedRelationMethods

  private

  sig { returns(NilClass) }
  def to_ary; end

  class << self
    sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ::Category).void)).returns(::Category) }
    def new(attributes = nil, &block); end
  end

  module CommonRelationMethods
    sig { params(block: T.nilable(T.proc.params(record: ::Category).returns(T.untyped))).returns(T::Boolean) }
    def any?(&block); end

    sig { params(column_name: T.any(String, Symbol)).returns(T.any(Integer, Float, BigDecimal)) }
    def average(column_name); end

    sig { params(block: T.nilable(T.proc.params(object: ::Category).void)).returns(::Category) }
    sig do
      params(
        attributes: T::Array[T.untyped],
        block: T.nilable(T.proc.params(object: ::Category).void)
      ).returns(T::Array[::Category])
    end
    sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ::Category).void)).returns(::Category) }
    def build(attributes = nil, &block); end

    sig { params(operation: Symbol, column_name: T.any(String, Symbol)).returns(T.any(Integer, Float, BigDecimal)) }
    def calculate(operation, column_name); end

    sig { params(column_name: T.nilable(T.any(String, Symbol))).returns(Integer) }
    sig { params(column_name: NilClass, block: T.proc.params(object: ::Category).void).returns(Integer) }
    def count(column_name = nil, &block); end

    sig { params(block: T.nilable(T.proc.params(object: ::Category).void)).returns(::Category) }
    sig do
      params(
        attributes: T::Array[T.untyped],
        block: T.nilable(T.proc.params(object: ::Category).void)
      ).returns(T::Array[::Category])
    end
    sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ::Category).void)).returns(::Category) }
    def create(attributes = nil, &block); end

    sig { params(block: T.nilable(T.proc.params(object: ::Category).void)).returns(::Category) }
    sig do
      params(
        attributes: T::Array[T.untyped],
        block: T.nilable(T.proc.params(object: ::Category).void)
      ).returns(T::Array[::Category])
    end
    sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ::Category).void)).returns(::Category) }
    def create!(attributes = nil, &block); end

    sig do
      params(
        attributes: T::Array[T.untyped],
        block: T.nilable(T.proc.params(object: ::Category).void)
      ).returns(T::Array[::Category])
    end
    sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ::Category).void)).returns(::Category) }
    def create_or_find_by(attributes, &block); end

    sig do
      params(
        attributes: T::Array[T.untyped],
        block: T.nilable(T.proc.params(object: ::Category).void)
      ).returns(T::Array[::Category])
    end
    sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ::Category).void)).returns(::Category) }
    def create_or_find_by!(attributes, &block); end

    sig { returns(T::Array[::Category]) }
    def destroy_all; end

    sig { params(conditions: T.untyped).returns(T::Boolean) }
    def exists?(conditions = :none); end

    sig { returns(T.nilable(::Category)) }
    def fifth; end

    sig { returns(::Category) }
    def fifth!; end

    sig do
      params(
        args: T.any(String, Symbol, ::ActiveSupport::Multibyte::Chars, T::Boolean, BigDecimal, Numeric, ::ActiveRecord::Type::Binary::Data, ::ActiveRecord::Type::Time::Value, Date, Time, ::ActiveSupport::Duration, T::Class[T.anything])
      ).returns(::Category)
    end
    sig do
      params(
        args: T::Array[T.any(String, Symbol, ::ActiveSupport::Multibyte::Chars, T::Boolean, BigDecimal, Numeric, ::ActiveRecord::Type::Binary::Data, ::ActiveRecord::Type::Time::Value, Date, Time, ::ActiveSupport::Duration, T::Class[T.anything])]
      ).returns(T::Enumerable[::Category])
    end
    sig { params(args: NilClass, block: T.proc.params(object: ::Category).void).returns(T.nilable(::Category)) }
    def find(args = nil, &block); end

    sig { params(args: T.untyped).returns(T.nilable(::Category)) }
    def find_by(*args); end

    sig { params(args: T.untyped).returns(::Category) }
    def find_by!(*args); end

    sig do
      params(
        start: T.untyped,
        finish: T.untyped,
        batch_size: Integer,
        error_on_ignore: T.untyped,
        order: Symbol,
        block: T.proc.params(object: ::Category).void
      ).void
    end
    sig do
      params(
        start: T.untyped,
        finish: T.untyped,
        batch_size: Integer,
        error_on_ignore: T.untyped,
        order: Symbol
      ).returns(T::Enumerator[::Category])
    end
    def find_each(start: nil, finish: nil, batch_size: 1000, error_on_ignore: nil, order: :asc, &block); end

    sig do
      params(
        start: T.untyped,
        finish: T.untyped,
        batch_size: Integer,
        error_on_ignore: T.untyped,
        order: Symbol,
        block: T.proc.params(object: T::Array[::Category]).void
      ).void
    end
    sig do
      params(
        start: T.untyped,
        finish: T.untyped,
        batch_size: Integer,
        error_on_ignore: T.untyped,
        order: Symbol
      ).returns(T::Enumerator[T::Enumerator[::Category]])
    end
    def find_in_batches(start: nil, finish: nil, batch_size: 1000, error_on_ignore: nil, order: :asc, &block); end

    sig do
      params(
        attributes: T::Array[T.untyped],
        block: T.nilable(T.proc.params(object: ::Category).void)
      ).returns(T::Array[::Category])
    end
    sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ::Category).void)).returns(::Category) }
    def find_or_create_by(attributes, &block); end

    sig do
      params(
        attributes: T::Array[T.untyped],
        block: T.nilable(T.proc.params(object: ::Category).void)
      ).returns(T::Array[::Category])
    end
    sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ::Category).void)).returns(::Category) }
    def find_or_create_by!(attributes, &block); end

    sig do
      params(
        attributes: T::Array[T.untyped],
        block: T.nilable(T.proc.params(object: ::Category).void)
      ).returns(T::Array[::Category])
    end
    sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ::Category).void)).returns(::Category) }
    def find_or_initialize_by(attributes, &block); end

    sig { params(signed_id: T.untyped, purpose: T.untyped).returns(T.nilable(::Category)) }
    def find_signed(signed_id, purpose: nil); end

    sig { params(signed_id: T.untyped, purpose: T.untyped).returns(::Category) }
    def find_signed!(signed_id, purpose: nil); end

    sig { params(arg: T.untyped, args: T.untyped).returns(::Category) }
    def find_sole_by(arg, *args); end

    sig { returns(T.nilable(::Category)) }
    sig { params(limit: Integer).returns(T::Array[::Category]) }
    def first(limit = nil); end

    sig { returns(::Category) }
    def first!; end

    sig { returns(T.nilable(::Category)) }
    def forty_two; end

    sig { returns(::Category) }
    def forty_two!; end

    sig { returns(T.nilable(::Category)) }
    def fourth; end

    sig { returns(::Category) }
    def fourth!; end

    sig { returns(Array) }
    def ids; end

    sig do
      params(
        of: Integer,
        start: T.untyped,
        finish: T.untyped,
        load: T.untyped,
        error_on_ignore: T.untyped,
        order: Symbol,
        use_ranges: T.untyped,
        block: T.proc.params(object: PrivateRelation).void
      ).void
    end
    sig do
      params(
        of: Integer,
        start: T.untyped,
        finish: T.untyped,
        load: T.untyped,
        error_on_ignore: T.untyped,
        order: Symbol,
        use_ranges: T.untyped
      ).returns(::ActiveRecord::Batches::BatchEnumerator)
    end
    def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, order: :asc, use_ranges: nil, &block); end

    sig { params(record: T.untyped).returns(T::Boolean) }
    def include?(record); end

    sig { returns(T.nilable(::Category)) }
    sig { params(limit: Integer).returns(T::Array[::Category]) }
    def last(limit = nil); end

    sig { returns(::Category) }
    def last!; end

    sig { params(block: T.nilable(T.proc.params(record: ::Category).returns(T.untyped))).returns(T::Boolean) }
    def many?(&block); end

    sig { params(column_name: T.any(String, Symbol)).returns(T.untyped) }
    def maximum(column_name); end

    sig { params(record: T.untyped).returns(T::Boolean) }
    def member?(record); end

    sig { params(column_name: T.any(String, Symbol)).returns(T.untyped) }
    def minimum(column_name); end

    sig { params(block: T.nilable(T.proc.params(object: ::Category).void)).returns(::Category) }
    sig do
      params(
        attributes: T::Array[T.untyped],
        block: T.nilable(T.proc.params(object: ::Category).void)
      ).returns(T::Array[::Category])
    end
    sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ::Category).void)).returns(::Category) }
    def new(attributes = nil, &block); end

    sig { params(block: T.nilable(T.proc.params(record: ::Category).returns(T.untyped))).returns(T::Boolean) }
    def none?(&block); end

    sig { params(block: T.nilable(T.proc.params(record: ::Category).returns(T.untyped))).returns(T::Boolean) }
    def one?(&block); end

    sig { params(column_names: T.untyped).returns(T.untyped) }
    def pick(*column_names); end

    sig { params(column_names: T.untyped).returns(T.untyped) }
    def pluck(*column_names); end

    sig { returns(T.nilable(::Category)) }
    def second; end

    sig { returns(::Category) }
    def second!; end

    sig { returns(T.nilable(::Category)) }
    def second_to_last; end

    sig { returns(::Category) }
    def second_to_last!; end

    sig { returns(::Category) }
    def sole; end

    sig { params(initial_value_or_column: T.untyped).returns(T.any(Integer, Float, BigDecimal)) }
    sig do
      type_parameters(:U)
        .params(
          initial_value_or_column: T.nilable(T.type_parameter(:U)),
          block: T.proc.params(object: ::Category).returns(T.type_parameter(:U))
        ).returns(T.type_parameter(:U))
    end
    def sum(initial_value_or_column = nil, &block); end

    sig { returns(T.nilable(::Category)) }
    sig { params(limit: Integer).returns(T::Array[::Category]) }
    def take(limit = nil); end

    sig { returns(::Category) }
    def take!; end

    sig { returns(T.nilable(::Category)) }
    def third; end

    sig { returns(::Category) }
    def third!; end

    sig { returns(T.nilable(::Category)) }
    def third_to_last; end

    sig { returns(::Category) }
    def third_to_last!; end
  end

  module GeneratedAssociationMethods
    # This method is created by ActiveRecord on the `Category` class because it declared `has_many :recipe_categories`.
    # 🔗 [Rails guide for `has_many` association](https://guides.rubyonrails.org/association_basics.html#the-has-many-association)
    sig { returns(::RecipeCategory::PrivateCollectionProxy) }
    def recipe_categories; end

    sig { params(value: T::Enumerable[::RecipeCategory]).void }
    def recipe_categories=(value); end

    sig { returns(T::Array[T.untyped]) }
    def recipe_category_ids; end

    sig { params(ids: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
    def recipe_category_ids=(ids); end

    sig { returns(T::Array[T.untyped]) }
    def recipe_ids; end

    sig { params(ids: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
    def recipe_ids=(ids); end

    # This method is created by ActiveRecord on the `Category` class because it declared `has_many :recipes, through: :recipe_categories`.
    # 🔗 [Rails guide for `has_many_through` association](https://guides.rubyonrails.org/association_basics.html#the-has-many-through-association)
    sig { returns(::Recipe::PrivateCollectionProxy) }
    def recipes; end

    sig { params(value: T::Enumerable[::Recipe]).void }
    def recipes=(value); end
  end

  module GeneratedAssociationRelationMethods
    sig { returns(PrivateAssociationRelation) }
    def all; end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def and(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def annotate(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def by_id(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def by_name(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def by_slug(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def create_with(*args, &blk); end

    sig { params(value: T::Boolean).returns(PrivateAssociationRelation) }
    def distinct(value = true); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def eager_load(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def except(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def excluding(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def extending(*args, &blk); end

    sig { params(association: Symbol).returns(T::Array[T.untyped]) }
    def extract_associated(association); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def from(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelationGroupChain) }
    def group(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def having(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def in_order_of(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def includes(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def invert_where(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def left_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def left_outer_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def limit(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def lock(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def merge(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def none(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def null_relation?(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def offset(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def only(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def optimizer_hints(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def or(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def preload(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def readonly(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def references(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def regroup(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def reorder(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def reselect(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def reverse_order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def rewhere(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def select(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def strict_loading(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def structurally_compatible?(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def uniq!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def unscope(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelationWhereChain) }
    def where(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def with(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def with_recursive(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def without(*args, &blk); end
  end

  module GeneratedAttributeMethods
    sig { returns(::ActiveSupport::TimeWithZone) }
    def created_at; end

    sig { params(value: ::ActiveSupport::TimeWithZone).returns(::ActiveSupport::TimeWithZone) }
    def created_at=(value); end

    sig { returns(T::Boolean) }
    def created_at?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at_before_last_save; end

    sig { returns(T.untyped) }
    def created_at_before_type_cast; end

    sig { returns(T::Boolean) }
    def created_at_came_from_user?; end

    sig { returns(T.nilable([::ActiveSupport::TimeWithZone, ::ActiveSupport::TimeWithZone])) }
    def created_at_change; end

    sig { returns(T.nilable([::ActiveSupport::TimeWithZone, ::ActiveSupport::TimeWithZone])) }
    def created_at_change_to_be_saved; end

    sig { params(from: ::ActiveSupport::TimeWithZone, to: ::ActiveSupport::TimeWithZone).returns(T::Boolean) }
    def created_at_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at_in_database; end

    sig { returns(T.nilable([::ActiveSupport::TimeWithZone, ::ActiveSupport::TimeWithZone])) }
    def created_at_previous_change; end

    sig { params(from: ::ActiveSupport::TimeWithZone, to: ::ActiveSupport::TimeWithZone).returns(T::Boolean) }
    def created_at_previously_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at_previously_was; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at_was; end

    sig { void }
    def created_at_will_change!; end

    sig { returns(::Integer) }
    def id; end

    sig { params(value: ::Integer).returns(::Integer) }
    def id=(value); end

    sig { returns(T::Boolean) }
    def id?; end

    sig { returns(T.nilable(::Integer)) }
    def id_before_last_save; end

    sig { returns(T.untyped) }
    def id_before_type_cast; end

    sig { returns(T::Boolean) }
    def id_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def id_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def id_change_to_be_saved; end

    sig { params(from: ::Integer, to: ::Integer).returns(T::Boolean) }
    def id_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::Integer)) }
    def id_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def id_previous_change; end

    sig { params(from: ::Integer, to: ::Integer).returns(T::Boolean) }
    def id_previously_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::Integer)) }
    def id_previously_was; end

    sig { returns(::Integer) }
    def id_value; end

    sig { params(value: ::Integer).returns(::Integer) }
    def id_value=(value); end

    sig { returns(T::Boolean) }
    def id_value?; end

    sig { returns(T.nilable(::Integer)) }
    def id_value_before_last_save; end

    sig { returns(T.untyped) }
    def id_value_before_type_cast; end

    sig { returns(T::Boolean) }
    def id_value_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def id_value_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def id_value_change_to_be_saved; end

    sig { params(from: ::Integer, to: ::Integer).returns(T::Boolean) }
    def id_value_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::Integer)) }
    def id_value_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def id_value_previous_change; end

    sig { params(from: ::Integer, to: ::Integer).returns(T::Boolean) }
    def id_value_previously_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::Integer)) }
    def id_value_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def id_value_was; end

    sig { void }
    def id_value_will_change!; end

    sig { returns(T.nilable(::Integer)) }
    def id_was; end

    sig { void }
    def id_will_change!; end

    sig { returns(::String) }
    def name; end

    sig { params(value: ::String).returns(::String) }
    def name=(value); end

    sig { returns(T::Boolean) }
    def name?; end

    sig { returns(T.nilable(::String)) }
    def name_before_last_save; end

    sig { returns(T.untyped) }
    def name_before_type_cast; end

    sig { returns(T::Boolean) }
    def name_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def name_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def name_change_to_be_saved; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def name_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def name_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def name_previous_change; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def name_previously_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def name_previously_was; end

    sig { returns(T.nilable(::String)) }
    def name_was; end

    sig { void }
    def name_will_change!; end

    sig { void }
    def restore_created_at!; end

    sig { void }
    def restore_id!; end

    sig { void }
    def restore_id_value!; end

    sig { void }
    def restore_name!; end

    sig { void }
    def restore_slug!; end

    sig { void }
    def restore_updated_at!; end

    sig { returns(T.nilable([::ActiveSupport::TimeWithZone, ::ActiveSupport::TimeWithZone])) }
    def saved_change_to_created_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_created_at?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_id?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_id_value; end

    sig { returns(T::Boolean) }
    def saved_change_to_id_value?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_name; end

    sig { returns(T::Boolean) }
    def saved_change_to_name?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_slug; end

    sig { returns(T::Boolean) }
    def saved_change_to_slug?; end

    sig { returns(T.nilable([::ActiveSupport::TimeWithZone, ::ActiveSupport::TimeWithZone])) }
    def saved_change_to_updated_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_updated_at?; end

    sig { returns(::String) }
    def slug; end

    sig { params(value: ::String).returns(::String) }
    def slug=(value); end

    sig { returns(T::Boolean) }
    def slug?; end

    sig { returns(T.nilable(::String)) }
    def slug_before_last_save; end

    sig { returns(T.untyped) }
    def slug_before_type_cast; end

    sig { returns(T::Boolean) }
    def slug_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def slug_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def slug_change_to_be_saved; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def slug_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def slug_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def slug_previous_change; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def slug_previously_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def slug_previously_was; end

    sig { returns(T.nilable(::String)) }
    def slug_was; end

    sig { void }
    def slug_will_change!; end

    sig { returns(::ActiveSupport::TimeWithZone) }
    def updated_at; end

    sig { params(value: ::ActiveSupport::TimeWithZone).returns(::ActiveSupport::TimeWithZone) }
    def updated_at=(value); end

    sig { returns(T::Boolean) }
    def updated_at?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at_before_last_save; end

    sig { returns(T.untyped) }
    def updated_at_before_type_cast; end

    sig { returns(T::Boolean) }
    def updated_at_came_from_user?; end

    sig { returns(T.nilable([::ActiveSupport::TimeWithZone, ::ActiveSupport::TimeWithZone])) }
    def updated_at_change; end

    sig { returns(T.nilable([::ActiveSupport::TimeWithZone, ::ActiveSupport::TimeWithZone])) }
    def updated_at_change_to_be_saved; end

    sig { params(from: ::ActiveSupport::TimeWithZone, to: ::ActiveSupport::TimeWithZone).returns(T::Boolean) }
    def updated_at_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at_in_database; end

    sig { returns(T.nilable([::ActiveSupport::TimeWithZone, ::ActiveSupport::TimeWithZone])) }
    def updated_at_previous_change; end

    sig { params(from: ::ActiveSupport::TimeWithZone, to: ::ActiveSupport::TimeWithZone).returns(T::Boolean) }
    def updated_at_previously_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at_previously_was; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at_was; end

    sig { void }
    def updated_at_will_change!; end

    sig { returns(T::Boolean) }
    def will_save_change_to_created_at?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id_value?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_name?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_slug?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_updated_at?; end
  end

  module GeneratedRelationMethods
    sig { returns(PrivateRelation) }
    def all; end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def and(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def annotate(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def by_id(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def by_name(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def by_slug(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def create_with(*args, &blk); end

    sig { params(value: T::Boolean).returns(PrivateRelation) }
    def distinct(value = true); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def eager_load(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def except(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def excluding(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def extending(*args, &blk); end

    sig { params(association: Symbol).returns(T::Array[T.untyped]) }
    def extract_associated(association); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def from(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelationGroupChain) }
    def group(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def having(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def in_order_of(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def includes(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def invert_where(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def left_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def left_outer_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def limit(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def lock(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def merge(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def none(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def null_relation?(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def offset(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def only(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def optimizer_hints(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def or(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def preload(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def readonly(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def references(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def regroup(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def reorder(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def reselect(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def reverse_order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def rewhere(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def select(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def strict_loading(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def structurally_compatible?(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def uniq!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def unscope(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelationWhereChain) }
    def where(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def with(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def with_recursive(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def without(*args, &blk); end
  end

  class PrivateAssociationRelation < ::ActiveRecord::AssociationRelation
    include CommonRelationMethods
    include GeneratedAssociationRelationMethods

    Elem = type_member { { fixed: ::Category } }

    sig { returns(T::Array[::Category]) }
    def to_a; end

    sig { returns(T::Array[::Category]) }
    def to_ary; end
  end

  class PrivateAssociationRelationGroupChain < PrivateAssociationRelation
    Elem = type_member { { fixed: ::Category } }

    sig { params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)]) }
    def average(column_name); end

    sig do
      params(
        operation: Symbol,
        column_name: T.any(String, Symbol)
      ).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)])
    end
    def calculate(operation, column_name); end

    sig { params(column_name: T.untyped).returns(T::Hash[T.untyped, Integer]) }
    def count(column_name = nil); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
    def having(*args, &blk); end

    sig { params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
    def maximum(column_name); end

    sig { params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
    def minimum(column_name); end

    sig do
      params(
        column_name: T.nilable(T.any(String, Symbol)),
        block: T.nilable(T.proc.params(record: T.untyped).returns(T.untyped))
      ).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)])
    end
    def sum(column_name = nil, &block); end
  end

  class PrivateAssociationRelationWhereChain < PrivateAssociationRelation
    Elem = type_member { { fixed: ::Category } }

    sig { params(args: T.untyped).returns(PrivateAssociationRelation) }
    def associated(*args); end

    sig { params(args: T.untyped).returns(PrivateAssociationRelation) }
    def missing(*args); end

    sig { params(opts: T.untyped, rest: T.untyped).returns(PrivateAssociationRelation) }
    def not(opts, *rest); end
  end

  class PrivateCollectionProxy < ::ActiveRecord::Associations::CollectionProxy
    include CommonRelationMethods
    include GeneratedAssociationRelationMethods

    Elem = type_member { { fixed: ::Category } }

    sig do
      params(
        records: T.any(::Category, T::Enumerable[T.any(::Category, T::Enumerable[::Category])])
      ).returns(PrivateCollectionProxy)
    end
    def <<(*records); end

    sig do
      params(
        records: T.any(::Category, T::Enumerable[T.any(::Category, T::Enumerable[::Category])])
      ).returns(PrivateCollectionProxy)
    end
    def append(*records); end

    sig { returns(PrivateCollectionProxy) }
    def clear; end

    sig do
      params(
        records: T.any(::Category, T::Enumerable[T.any(::Category, T::Enumerable[::Category])])
      ).returns(PrivateCollectionProxy)
    end
    def concat(*records); end

    sig { returns(T::Array[::Category]) }
    def load_target; end

    sig do
      params(
        records: T.any(::Category, T::Enumerable[T.any(::Category, T::Enumerable[::Category])])
      ).returns(PrivateCollectionProxy)
    end
    def prepend(*records); end

    sig do
      params(
        records: T.any(::Category, T::Enumerable[T.any(::Category, T::Enumerable[::Category])])
      ).returns(PrivateCollectionProxy)
    end
    def push(*records); end

    sig do
      params(
        other_array: T.any(::Category, T::Enumerable[T.any(::Category, T::Enumerable[::Category])])
      ).returns(T::Array[::Category])
    end
    def replace(other_array); end

    sig { returns(PrivateAssociationRelation) }
    def scope; end

    sig { returns(T::Array[::Category]) }
    def target; end

    sig { returns(T::Array[::Category]) }
    def to_a; end

    sig { returns(T::Array[::Category]) }
    def to_ary; end
  end

  class PrivateRelation < ::ActiveRecord::Relation
    include CommonRelationMethods
    include GeneratedRelationMethods

    Elem = type_member { { fixed: ::Category } }

    sig { returns(T::Array[::Category]) }
    def to_a; end

    sig { returns(T::Array[::Category]) }
    def to_ary; end
  end

  class PrivateRelationGroupChain < PrivateRelation
    Elem = type_member { { fixed: ::Category } }

    sig { params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)]) }
    def average(column_name); end

    sig do
      params(
        operation: Symbol,
        column_name: T.any(String, Symbol)
      ).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)])
    end
    def calculate(operation, column_name); end

    sig { params(column_name: T.untyped).returns(T::Hash[T.untyped, Integer]) }
    def count(column_name = nil); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
    def having(*args, &blk); end

    sig { params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
    def maximum(column_name); end

    sig { params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
    def minimum(column_name); end

    sig do
      params(
        column_name: T.nilable(T.any(String, Symbol)),
        block: T.nilable(T.proc.params(record: T.untyped).returns(T.untyped))
      ).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)])
    end
    def sum(column_name = nil, &block); end
  end

  class PrivateRelationWhereChain < PrivateRelation
    Elem = type_member { { fixed: ::Category } }

    sig { params(args: T.untyped).returns(PrivateRelation) }
    def associated(*args); end

    sig { params(args: T.untyped).returns(PrivateRelation) }
    def missing(*args); end

    sig { params(opts: T.untyped, rest: T.untyped).returns(PrivateRelation) }
    def not(opts, *rest); end
  end
end
