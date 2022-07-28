module AnimalsHelper
    def species
        Animal.species.keys.map do |specie|
            [t("activerecord.attributes.animal.species.#{specie}"), specie]
        end
    end
end
