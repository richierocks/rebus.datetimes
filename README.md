[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)
[![Is the package on CRAN?](http://www.r-pkg.org/badges/version/rebus.datetimes)](http://www.r-pkg.org/pkg/rebus.datetimes)
[![Build Status](https://semaphoreci.com/api/v1/projects/ce7cece9-2816-4e3a-b95b-a57db96e531d/635540/badge.svg)](https://semaphoreci.com/richierocks/rebus-datetimes)

# rebus.datetimes: Regular Expression Builder, Um, Something (Datetime-Related Functionality)

This package contains datetime-related functionality for the [*rebus*](https://github.com/richierocks/rebus) package.  It is primarily intended for other R package developers.  For interactive use, try *rebus* instead.

## Build regular expressions in a human readable way

Regular expressions are a very powerful tool, but the syntax is terse enough
to be difficult to read.  This makes bugs easy to introduce and hard to
find.  This package contains functions to make building regular expressions
easier.

## Installation

To install the stable version, type:

```{r}
install.packages("rebus.datetimes")
```

To install the development version, you first need the *devtools* package.

```{r}
install.packages("devtools")
```

Then you can install the *rebus.datetimes* package using

```{r}
library(devtools)
install_github("richierocks/rebus.datetimes")
```

## Package contents

`datetime` accepts a `strptime`-style format string, and creates a regular expression to match it.  You can choose the locale for matching (month names differ between locales), and whether the regex is used for input or output (input needs to be less strict).

`iso_date`, `iso_time` and `iso_datetime` provide regexes to match ISO 8601 standard dates and times.

Constants are available for date components. For example, `SECOND` matches seconds, `TIMEZONE` matches timezones, etc.
