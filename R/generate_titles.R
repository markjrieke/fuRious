#' Generate Fast & Furious inspired movie titles
#'
#' @description
#'   Generate a family of movie titles based on a series all about family. Takes
#'   two words as arguments to create the titles.
#'
#' @param first_word The first root word of the movie titles. Defaults to `"Fast"`.
#' @param second_word The second root word of the movie titles. Defaults to `"Furious"`.
#'
#' @export
#'
#' @importFrom assertthat assert_that
#' @importFrom stringr str_to_title
#' @importFrom glue glue
#'
#' @examples
#' generate_titles()
#' generate_titles("Star", "Wars")
generate_titles <- function(first_word = "Fast",
                            second_word = "Furious") {

  # check types!
  assertthat::assert_that(
    is.character(first_word) & is.character(second_word),
    msg = "Arguments `first_word` and `second_word` must be characters!"
  )

  # correct non-proper titles
  first_word <- stringr::str_to_title(first_word)
  second_word <- stringr::str_to_title(second_word)

  # output titles as vector
  c(
    glue::glue("The {first_word} and the {second_word}"),
    glue::glue("2 {first_word} 2 {second_word}"),
    glue::glue("The {first_word} and the {second_word}: Tokyo Drift"),
    glue::glue("{first_word} & {second_word}"),
    glue::glue("{first_word} Five"),
    glue::glue("{first_word} & {second_word} 6"),
    glue::glue("{second_word} 7"),
    glue::glue("The Fate of the {second_word}"),
    glue::glue("{stringr::str_sub(first_word, 1, 1)}9"),
    glue::glue("{first_word} X")
  )

}
