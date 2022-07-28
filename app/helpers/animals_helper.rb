module AnimalsHelper
    def species
        Animal.species.keys.map do |species|
            [t("activerecord.attributes.order.states.#{species}"), species]
        end
    end 
end
