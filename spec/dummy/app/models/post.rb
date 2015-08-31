class Post < Struct.new(:id, :title, :date)
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  extend ActiveModel::Translation

  def persisted?
    id.present?
  end
end
