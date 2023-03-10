#' Power used by automobiles
#'
#' This function computes automobile fuel efficiency - the power required to keep a car moving at a given speed
#' @param crolling rolling resistive coefficient default = 0.015
#' @param cdrag aerodynamic resistive coefficient default = 0.3
#' @param speed vehicle speed (m/s)
#' @param mass vehicle mass (kg)
#' @param A surface area of car (m2)
#' @param g acceleration due to gravity (m/s) default=9.8
#' @param p_air density of air (kg/m3) default=1.2
#' @return power (W)
#'
# function definition
tmautopower = function(crolling=0.015, cdrag=0.3, speed, mass, A, g=9.8, p_air=1.2) {
  result = crolling * mass * g * speed + (1/2) * A * p_air * cdrag * speed^3
  return(result)
}
