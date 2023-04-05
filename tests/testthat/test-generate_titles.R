test_that("parameter assertion throws error as expected", {

  # bad parameters!
  expect_error(
    generate_titles(1, 2),
    "Arguments `first_word` and `second_word` must be characters!"
  )

})

test_that("generate_titles() returns vector in expected format", {

  x <- generate_titles("star", "wars")
  expect_type(x, "character")
  expect_equal(length(x), 10)

})
