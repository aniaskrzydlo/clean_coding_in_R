DAYS <- c("Monday",
          "Tuesday",
          "Wednesday",
          "Thursday",
          "Friday",
          "Satuday",
          "Sunday")

get_day_of_weeek_name <- function(day_of_week_number) {
  DAYS[day_of_week_number]
}

get_day_of_weeek_name(1)
