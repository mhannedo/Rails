class User < ApplicationRecord

    belongs_to :city
    has_many :potins
    has_many :private_messages, foreign_key: 'sender_id'
    has_many :private_messages, foreign_key: 'recipient1_id'
    has_many :private_messages, foreign_key: 'recipient2_id'
end
