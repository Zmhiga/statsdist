#' Kullback-Leibler Divergence Function
#'
#' This function allows the user to calculates the Kullback-Leibler Divergence between two discrete probability distributions
#' @param dist1 The vector of probabilities of the first discrete distribution
#' @param dist2 The vector of probabilities of the second discrete distribution
#' @keywords Distance Divergence
#' @export kl_div
#' @examples
#' kl_div()

kl_div = function(dist1, dist2) {

  if (length(dist1) != length(dist2)) {

    stop("These Probability Distributions are of Different Lengths")

  }

  kl_dist1 = rep(NA, length(dist1))

  for (i in 1:length(dist1)) {

    kl_dist1[i] = dist1[i]*log(dist1[i]/dist2[i])

  }

  print("The Relative Entropy from Distribution 2 to Distribution 1 is:")

  print(sum(kl_dist1))

  kl_dist2 = rep(NA, length(dist2))

  for (i in 1:length(dist2)) {

    kl_dist2[i] = dist2[i]*log(dist2[i]/dist1[i])

  }

  print("The Relative Entropy from Distribution 1 to Distribution 2 is:")

  print(sum(kl_dist2))

}
