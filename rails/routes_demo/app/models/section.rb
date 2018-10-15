class Section < ApplicationRecord
  belongs_to :pages
  has_belongs_to_many :subject
end
