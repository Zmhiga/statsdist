#' Total Variation Distance Function
#'
#' This function allows the user to calculate the total variation distance between two discrete probability functions
#' @param dist1 The vector of probabilities of the first discrete distribution
#' @param dist2 The vector of probabilities of the second discrete distribution
#' @keywords Distance
#' @export
#' @examples
#' tv_distance()

tv_distance = function(dist1, dist2) {
  
  if (length(dist1) != length(dist2)) {
    
    stop("These Probability Distributions are of Different Lengths")
    
  }
  
  diff = rep(NA, length(dist1))
    
  for (i in 1:length(dist1)) {
      
    diff[i] = abs(dist1[i] - dist2[i])
      
  }
    
  return(sum(diff)/2)
    
}
