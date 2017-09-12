SELECT 
    FMID, IC,
    Organic, Bakedgoods,Cheese, Crafts, Flowers, Eggs, Seafood, Herbs,  Vegetables, Honey, Jams, Maple, Meat, Nursery, Nuts, Plants, Poultry, Prepared, Soap, Trees, Wine, Coffee, Beans, Fruits, Grains, Juices, Mushrooms, PetFood, Tofu, WildHarvested
FROM
    (SELECT 
        Organic_clean+ Bakedgoods_clean+Cheese_clean+ Crafts_clean+ Flowers_clean+ Eggs_clean+ Seafood_clean+ Herbs_clean+  Vegetables_clean+ Honey_clean+ Jams_clean+ Maple_clean+ Meat_clean+ Nursery_clean+ Nuts_clean+ Plants_clean+ Poultry_clean+ Prepared_clean+ Soap_clean+ Trees_clean+ Wine_clean+ Coffee_clean+ Beans_clean+ Fruits_clean+ Grains_clean+ Juices_clean+ Mushrooms_clean+ PetFood_clean+ Tofu_clean+ WildHarvested_clean AS IC,
		FMID,
		Organic, Bakedgoods,Cheese, Crafts, Flowers, Eggs, Seafood, Herbs,  Vegetables, Honey, Jams, Maple, Meat, Nursery, Nuts, Plants, Poultry, Prepared, Soap, Trees, Wine, Coffee, Beans, Fruits, Grains, Juices, Mushrooms, PetFood, Tofu, WildHarvested
    FROM
        `598`.farmersmarkets
    WHERE
        Organic_clean IN (0 , 1) and  Bakedgoods_clean IN (0 , 1) and Cheese_clean IN (0 , 1) and  Crafts_clean IN (0 , 1) and  Flowers_clean IN (0 , 1) and  Eggs_clean IN (0 , 1) and  Seafood_clean IN (0 , 1) and  Herbs_clean IN (0 , 1) and   Vegetables_clean IN (0 , 1) and  Honey_clean IN (0 , 1) and  Jams_clean IN (0 , 1) and  Maple_clean IN (0 , 1) and  Meat_clean IN (0 , 1) and  Nursery_clean IN (0 , 1) and  Nuts_clean IN (0 , 1) and  Plants_clean IN (0 , 1) and  Poultry_clean IN (0 , 1) and  Prepared_clean IN (0 , 1) and  Soap_clean IN (0 , 1) and  Trees_clean IN (0 , 1) and  Wine_clean IN (0 , 1) and  Coffee_clean IN (0 , 1) and  Beans_clean IN (0 , 1) and  Fruits_clean IN (0 , 1) and  Grains_clean IN (0 , 1) and  Juices_clean IN (0 , 1) and  Mushrooms_clean IN (0 , 1) and  PetFood_clean IN (0 , 1) and  Tofu_clean IN (0 , 1) and  WildHarvested_clean
        ) AS Q
WHERE
    Q.IC = 0;