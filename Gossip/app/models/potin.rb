class Potin < ApplicationRecord

    belongs_to :user
    has_many :join_tag_potins
    has_many :tags, through: :join_tag_potins
end
