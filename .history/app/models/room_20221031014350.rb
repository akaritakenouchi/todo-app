class Room < ApplicationRecord
    has_many :messages
    has_many :users, through
end
