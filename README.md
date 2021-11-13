#  `Lazada Scrapper` for Smartphones & Tablets
### Packages
```{r}
install.packages('selectr')
install.packages('xml2')
install.packages('rvest')
install.packages('stringr')
install.packages('jsonlite')
```

### Instructions
1. Extract both files in the same directory
2. Install required packages as shown in [Packages](#Packages)
3. Open `WebScraping.R`
4. (_optional_) Enter more product URLs from [Lazada](https://www.lazada.com.my/shop-mobiles/) to `urlToScrap` variable
5. Run `WebScraping.R`
6. `products.json` will be created in the same directory as the script


### Example
**Products:**<br/>
[<img src="https://user-images.githubusercontent.com/57207346/141651815-fcc9dbba-7d6c-432b-ac03-78d6114f41d9.png" target="_blank" width=400>](https://www.lazada.com.my/products/samsung-galaxy-m32-smartphone-8gb-ram-128gb-rom-1-year-samsung-warranty-free-shipping-i2301265385-s9789875175.html)
[<img src="https://user-images.githubusercontent.com/57207346/141651827-878e06fe-5085-44e4-a477-2105e90fd19c.png" target="_blank" width=400>](https://www.lazada.com.my/products/apple-ipad-pro-129-inch-5th-generation-wi-fi-i2233155396-s9460855321.html)
[<img src="https://user-images.githubusercontent.com/57207346/141651671-4becc3d4-6f1a-461a-b88a-c71b2d4fda8b.png" target="_blank" width=400>](https://www.lazada.com.my/products/iphone-12-64gb-128gb-256gb-i1559136225-s5247366377.html)

**Data Frame Output:**<br/>
![image](https://user-images.githubusercontent.com/57207346/141651914-2b30f87b-f338-410c-be44-8b24a14ad0f1.png)

**JSON Output:**<br/>
```json
[
   {
      "Title":"iPhone 12 64GB / 128GB / 256GB",
      "Price":"RM3,399.00",
      "Color":"PRODUCT(RED)",
      "Storage":"N/A",
      "Brand":"Apple",
      "Rating":"35 Ratings"
   },
   {
      "Title":"Samsung Galaxy M32 Smartphone (8GB RAM + 128GB ROM) 1 Year Samsung Warranty , Free Shipping",
      "Price":"RM949.00",
      "Color":"Black",
      "Storage":"128GB",
      "Brand":"Samsung",
      "Rating":"457 Ratings"
   },
   {
      "Title":"Apple iPad Pro 12.9-inch 5th Generation (Wi-Fi)",
      "Price":"RM4,599.00",
      "Color":"Space Grey",
      "Storage":"128GB",
      "Brand":"Apple",
      "Rating":"1 Ratings"
   }
]
```
