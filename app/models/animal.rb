class Animal < ApplicationRecord
    enum specie: { Birds: 0, Reptiles: 1, Mammals: 2, Amphibians: 3 }
end
