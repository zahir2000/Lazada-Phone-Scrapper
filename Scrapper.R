Scrap <- function(urlToScrap) {
  webpage <- read_html(urlToScrap)
  
  title_html <- html_nodes(webpage, "div#module_product_title_1")
  title <- html_text(title_html)
  formattedTitle <- str_replace_all(title, "[\r\n]" , "")
  head(formattedTitle)
  
  price_html <- html_nodes(webpage, "span.pdp-price")
  price <- html_text(price_html)
  formattedPrice <- str_replace_all(price[1], "[\r\n]" , "")
  head(formattedPrice)
  
  type_html <- html_nodes(webpage, "div.sku-prop-content-header")
  type <- html_text(type_html)
  formattedType <- str_replace_all(type, "[\r\n]" , "")
  #formattedType <- sub(".*Family", "", formattedType)
  if (length(formattedType) > 1) {
    color = formattedType[1]
    storage = formattedType[2]
  } else {
    color = formattedType[1]
    storage = "N/A"
  }
  #head(formattedType[1])
  #paste(gsub("\\Family.*$", "", formattedType), sub(".*Family", "", formattedType), sep = ": ")
  
  brand_html <- html_nodes(webpage, "div#module_product_brand_1")
  brand <- html_text(brand_html)
  formattedBrand <- str_replace_all(brand, "[\r\n]" , "")
  formattedBrand <- gsub("\\More.*$", "", formattedBrand)
  formattedBrand <- trimws(sub(".*:", "", formattedBrand))
  head(formattedBrand)
  
  rating_html <- html_nodes(webpage, "a.pdp-review-summary__link")
  rating <- html_text(rating_html)
  formattedRating <- str_replace_all(rating, "[\r\n]" , "")
  head(formattedRating)
  
  product <- data.frame(Title = formattedTitle,
                        Price = formattedPrice,
                        Color = color, 
                        Storage = storage,
                        Brand = formattedBrand,
                        Rating = formattedRating)
  return(product) 
  close(urlToScrap)
}