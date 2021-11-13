library(xml2)
library(rvest)
library(stringr)
library(jsonlite)

#Please make sure both the .R files are in the same directory.

#Enter Lazada URLs to Scrap
urlToScrap <- c(
"https://www.lazada.com.my/products/iphone-12-64gb-128gb-256gb-i1559136225-s5247366377.html",
"https://www.lazada.com.my/products/samsung-galaxy-m32-smartphone-8gb-ram-128gb-rom-1-year-samsung-warranty-free-shipping-i2301265385-s9789875175.html",
"https://www.lazada.com.my/products/apple-ipad-pro-129-inch-5th-generation-wi-fi-i2233155396-s9460855321.html"
)

#Set source for our scrapper.R
scriptDir <- dirname(rstudioapi::getSourceEditorContext()$path)
source(paste(scriptDir, "Scrapper.R", sep = "/"))

#Initialize empty products dataframe
products = data.frame()

#Loop each URL for scrapping and store in the products dataframe
for (i in 1:length(urlToScrap)) {
  products <- rbind(products, Scrap(urlToScrap[i]))
}

print(products)

#Store data in JSON format
json_data <- toJSON(products)
cat(json_data)
write(json_data, paste(scriptDir, "products.json", sep="/"))

#To output dataframe in a nicer format - uncomment codes below
#install.packages("gridExtra")
#library(gridExtra)
#grid.table(products)
#dev.off()