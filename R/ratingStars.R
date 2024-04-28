#' Create a rating input widget
#'
#' This function creates a rating input widget using HTML and CSS, enhanced with JavaScript.
#'
#' @param id The ID for the input element.
#' @param label_name The label name for the input element.
#'
#' @return An HTML widget for rating input.
#' @export
#'
#' @examples
#' ratingInput("ratingId", "Rating")
#'
ratingInput <- function(id,label_name) {
  htmltools::tagList(
    html_stmt(id,label_name),
    html_dependency_applause()
  )
}

#' Create an HTML dependency for star rating
#'
#' This function creates an HTML dependency for star rating using specified scripts and stylesheets.
#'
#' @return An HTML dependency object.

html_dependency_applause <- function() {
  htmltools::htmlDependency(
    name = "ssr",
    version = "3.3.2",
    package = "myStarRating",
    src = "ssr",
    script = c("my-script.js","ion.ratingStar.min.js"),
    stylesheet = "my-style.css"
  )
}

#' Create HTML statement for rating input
#'
#' This function creates HTML code for a rating input element.
#'
#' @param h_id The ID for the input element.
#' @param h_label The label for the input element.
#'
#' @return HTML code for rating input

html_stmt <- function(h_id,h_label) {

  input_html <- paste0(
    '

    <div class="form-group shiny-input-container">
        <label class="control-label" id="rating-label" for="',h_id,'">',h_label,'</label>
        <!-- This is where the slider input will be generated -->
        <input class="js-star-rating" id="',h_id,'" type="text">
    </div>
                                 '
  )
  return(HTML(input_html))
}
