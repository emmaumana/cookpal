# typed: strict

module SanitizeHelpers
  extend T::Sig

  sig { params(string: String).returns(String) }
  def slugify(string)
    string.parameterize
  end
end
