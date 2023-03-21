source("/home/dan/Desktop/RActivities/tests/MultiplyBy2.R", chdir = TRUE)
library(testthat)

test_that("single number", {
    expect_equal(multby2(2), 4)
    expect_equal(multby2(-2), -4)
})

test_that("vectors", {
    expect_equal(multby2(c(2,4)),c(4,8))
    expect_equal(multby2(c(-2,-4)),c(-4,-8))
})

test_that("empty vector", {
  expect_equal(multby2(c()), c(0))
})

test_that("test NA", {
  expect_true(is.na(multby2(NA)))
})