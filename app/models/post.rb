class Post < ActiveRecord::Base
  validates :name, presence: true
  validates :content, presence: true

  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags
  
  def tags_attributes=(tags_attributes)
    tags_attributes.values.each do |tags_attribute|
      tag = Tag.find_or_create_by(tags_attribute)
      self.tags << tag
    end
  end

end
