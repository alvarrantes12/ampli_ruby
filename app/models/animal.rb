class Animal < ApplicationRecord
    enum species: { mammal: 0, bird: 1, reptile: 2, plant: 3}
end
