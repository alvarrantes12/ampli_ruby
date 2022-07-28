class Animal < ApplicationRecord
    validates :name, presence: true
    enum specie: { mammal: 0, bird: 1, fish: 3, reptile: 4}
end
