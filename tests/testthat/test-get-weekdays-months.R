context("get_weekdays")

test_that(
  "get_weekdays returns a group of days of the week",
  {
    expected <- as.regex("(?:Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday|Monday)")
    actual <- get_weekdays()
    expect_equal(actual, expected)
  }
)

test_that(
  "get_weekdays with abbreviate = TRUE returns a group of days of the week",
  {
    expected <- as.regex("(?:Tue|Wed|Thu|Fri|Sat|Sun|Mon)")
    actual <- get_weekdays(TRUE)
    expect_equal(actual, expected)
  }
)
context("get_months")

test_that(
  "get_months returns a group of months of the year",
  {
    expected <- as.regex("(?:December|January|February|March|April|May|June|July|August|September|October|November)")
    actual <- get_months()
    expect_equal(actual, expected)
  }
)

test_that(
  "get_months with abbreviate = TRUE returns a group of months of the year",
  {
    expected <- as.regex("(?:Dec|Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov)")
    actual <- get_months(TRUE)
    expect_equal(actual, expected)
  }
)
