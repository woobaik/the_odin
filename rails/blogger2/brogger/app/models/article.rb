class Article < ApplicationRecord
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

  def tag_list
    self.tags.collect do |tag|
      tag.name
    end.join(", ")
  end

  def tag_list=(tag_string)
    tag_names = tags_string.split(", ").map {|s| s.strip.downcase}.uniq
    new_or_found_tags = tag_names.collect {|name| Tag.find}
  end
end
