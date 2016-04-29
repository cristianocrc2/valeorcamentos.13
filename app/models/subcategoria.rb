class Subcategoria < ActiveRecord::Base
  belongs_to :categoria
  has_many :subsubcategoria
end
