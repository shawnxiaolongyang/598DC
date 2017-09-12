# 598DC
  Farmers market is where two or more farm venders selling agricultural products directly to customers at a common, recurrent physical location [1]. The dataset for Farmers Market in US is designed to provide customers with convenient access to information about contact information, market location, opening time, product offerings and accepted forms of payment, and more. The dataset can be found at https://www.ams.usda.gov/local-food-directories/farmersmarkets . It was maintained by Agricultural Marketing Service. 
  
  The dataset stored all information in one table. As mentioned above, the dataset contained five parts of information. Contact, Geographic information and operation time should be stored in the same table of the identity, because different market had different locations and time schedule. Product offerings and Payment choices should be stored in separated tables, however, since the dictionary was merely showed user whether they had specific type of product to buy, or the payment methods to choose, there is no need to open a new table.

  The contact information included 6 columns: Market Name, Website, Facebook, Twitter, Youtube, and other Media. The Market Name is a text format and others are link format. From an initial assessment using Text Facet in OpenRefine, we can find some of the website and social media was not in link format, I would use regular expression to change the format. 

  The location part contained 8 columns: street, city, county, state, zip, x (longitude), y (latitude) and locations. The street, city, county, state and location are text format, zip is 5 digits integer, x and y are float point. From an initial assessment, we can find there are different uppercase and lowercase for city, county and state with same meaning. We can also find some of the zip is 4 digits or more than 5 digits.  Moreover, the longitude and latitude is in text format. I would use OpenRefine to clean those data.

  The operation time contained two part: season date and season time. Season date told users the time periods when farmers market would open and seasons time told users when farmers market would open in a day and day of week. Current date information is stored in text format, I would split the columns into start date and end date in the future. Current time information is stored in json format, I would create 7 columns from Monday to Sunday to store the opening time in each day. There are at most four seasons date and time. There are also an updated time columns to show when is the last time the information modified.

  The product offerings and payment choices included 36 columns: Credit, WIC, WICcash, SFMNP, SNAP, Organic, Bakedgoods, Cheese, Crafts, Flowers, Eggs, Seafood, Herbs, Vegetables, Honey, Jams, Maple, Meat, Nursery, Nuts, Plants, Poultry, Prepared, Soap, Trees, Wine, Coffee, Beans, Fruits, Grains, Juices, Mushrooms, PetFood, Tofu, WildHarvested. All of them are Yes, No or null. However, for rganic column, the null value was replaced with -, I would use openrefine to clean the Organic column.
  
  The user case should be: 
1. import the data into cleaning software, 
2. clean exception value, 
3. split columns with too much information, 
4. transfer data into appropriate format, 
5. merge those synonyms cells, 
6. export data into files, 
7. find the integrity constraint and applied to the data, 
8. import the cleaned data into database. 
