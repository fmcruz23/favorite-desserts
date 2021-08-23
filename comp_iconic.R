# Compares our deserts to the "iconic" list. lines 3-17 are Julian Brun's

 library(tidyverse)
# library(rvest)

# read the webpage code
# webpage <- read_html("https://www.eatthis.com/iconic-desserts-united-states/")

# Extract the desserts listing
# dessert_elements<- html_elements(webpage, "h2")
# dessert_listing <- dessert_elements %>% 
#  html_text2() %>% # extracting the text associated with this type of elements of the webpage
#  as_tibble() %>% # make it a data frame
#  rename(dessert = value) %>% # better name for the column
#  head(.,-3) %>% # 3 last ones were not desserts 
#  rowid_to_column("rank") %>% # adding a column using the row number as proxy for the rank
#  write_csv("data/iconic_desserts.csv") # save it as csv

library(here)
 library(janitor)
 
 
d_iconic = tibble::tribble(
  ~rank,                  ~dessert,
     1L,  "Chocolate chip cookies",
     2L,               "Apple pie",
     3L,              "Cheesecake",
     4L,               "Pecan pie",
     5L,             "Carrot cake",
     6L,               "Ice cream",
     7L,        "Boston cream pie",
     8L,          "Banana pudding",
     9L,            "Baked Alaska",
    10L,                "Buckeyes",
    11L, "Indiana sugar cream pie",
    12L,                 "S'mores",
    13L,               "Lane cake",
    14L,          "Bananas foster",
    15L, "Black and white cookies",
    16L,              "Swiss roll",
    17L,               "Shave ice",
    18L,          "Coca-Cola cake",
    19L,    "Rice Krispies treats",
    20L,             "Pumpkin pie",
    21L,         "Red velvet cake",
    22L,             "Funnel cake",
    23L,     "Lady Baltimore cake",
    24L,                "Pralines",
    25L,           "Lemon squares",
    26L,           "Peach cobbler",
    27L,    "Mississippi mud cake",
    28L,            "Icebox cakes",
    29L,                  "Donuts",
    30L,       "Gooey butter cake",
    31L,                   "Fudge",
    32L,            "Banana split",
    33L,                  "Jell-O",
    34L,               "Chess pie",
    35L,   "Sour cream pound cake",
    36L,            "Key lime pie",
    37L,              "Cherry pie",
    38L,        "Seven-layer bars",
    39L,            "Coconut cake",
    40L,                "Brownies",
    41L,                "Blondies",
    42L,            "Whoopie pies"
  )

d_iconic = d_iconic %>% 
  clean_names() %>% 
  mutate(dessert = tolower(dessert))
d_ours = read.csv(here("favorite_desserts.csv"))

for(i in 1:length(d_ours)) {
  if (d_ours$first_name[i] == "Shale") {
    if (d_ours$Favorite_dessert[i] %in% d_iconic$dessert) {
      print("ur basic")
    } else {
      print("ur weird")
    }
    
  }
}