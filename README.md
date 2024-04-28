#  Interactive Rating Stars - Shiny Style

The Interactive Rating Stars is an R package that provides a star rating input widget for use in Shiny applications. This package allows users to easily integrate star rating functionality into their Shiny apps for collecting user feedback or ratings. The design is particularly well-suited for web applications with a shiny and dynamic user interface.

## Features
- Create a star rating input widget with customizable options.
- Easily integrate the widget into Shiny applications.

## Pre-requesities
There are some packages must have installed.
- shiny: The web application framework for R.
- htmltools: Tools for HTML

## Installation

Install this package into your R libraries via console.You can install the package from GitHub using the devtools package:
  ```R
  # Install devtools package if not already installed
  if (!require(devtools)) install.packages("devtools")

  # Install the package from GitHub
  devtools::install_github("PubDe/Interactive-Rating-Stars-Shiny-Style")
 ```
## Usage
To use the star rating input widget in your Shiny application, follow these steps:

1. Load the ratingStars package:
```R
library(ratingStars)
```
2. Create the rating input widget using the ratingInput function:
```R
ratingInput("ratingId", "Rating")
```
3.Integrate the widget into your Shiny UI by including it in your UI definition:
```R
ui <- fluidPage(
  ratingInput("ratingId", "Rating")
)
```
4.Handle the user's input in your server logic.

For more information on customization options and advanced usage, please refer to the package documentation.

## Contribution

- Contributions are welcome! If you find any issues, have suggestions, or want to add features, please open an issue or create a pull request.

## License
- [MIT License](https://choosealicense.com/licenses/mit/)

## Acknowladgement

- This package was inspired by the need for a simple and customizable star rating input widget in Shiny applications.
- [ion-rangeslider.css styling](https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css)
- [ion-rangeslider.js scripting](https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js)
