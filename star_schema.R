library(tidyr)
library(starschemar)

dm_mrs_age <- dimensional_model() %>%
  define_fact(
    name = "mrs_age",
    measures = c(
      "Deaths"
    ),
    agg_functions = c(
      "SUM"
    ),
    nrow_agg = "nrow_agg"
  ) %>%
  define_dimension(
    name = "when",
    attributes = c(
      "Week Ending Date",
      "WEEK",
      "Year"
    )
  ) %>%
  define_dimension(
    name = "when_available",
    attributes = c(
      "Data Availability Date",
      "Data Availability Week",
      "Data Availability Year"
    )
  ) %>%
  define_dimension(
    name = "where",
    attributes = c(
      "REGION",
      "State",
      "City"
    )
  ) %>%
  define_dimension(
    name = "who",
    attributes = c(
      "Age Range"
    )
  )

dm_mrs_cause <- dimensional_model() %>%
  define_fact(
    name = "mrs_cause",
    measures = c(
      "Pneumonia and Influenza Deaths",
      "Other Deaths"
    ),
  ) %>%
  define_dimension(
    name = "when",
    attributes = c(
      "Week Ending Date",
      "WEEK",
      "Year"
    )
  ) %>%
  define_dimension(
    name = "when_received",
    attributes = c(
      "Reception Date",
      "Reception Week",
      "Reception Year"
    )
  ) %>%
  define_dimension(
    name = "when_available",
    attributes = c(
      "Data Availability Date",
      "Data Availability Week",
      "Data Availability Year"
    )
  ) %>%
  define_dimension(
    name = "where",
    attributes = c(
      "REGION",
      "State",
      "City"
    )
  )

st_mrs_age <- star_schema(mrs_age, dm_mrs_age)
st_mrs_age