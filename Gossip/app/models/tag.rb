class Tag < ApplicationRecord

    has_many :join_tag_potins
    has_many :potins, through: :join_tag_potins
end
