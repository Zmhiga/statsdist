#' Probability Distribution Barplot Function
#'
#' This function allows the user to view the Barplots for two discrete probability distributions
#' @param dist1 The vector of probabilities of the first discrete distribution
#' @param dist2 The vector of probabilities of the second discrete distribution
#' @param both If true, both barplots for each distribution will be in one barplot (default is true)
#' @keywords Probability Barplot
#' @export prob_bar()
#' @examples
#' prob_bar()

prob_bar = function(dist1, dist2, both = T) {

  if (both == T) {

    if (length(dist1) != length(dist2)) {

      stop("These Probability Distributions are of Different Lengths")

    }

    dist = data.frame(dists = rep(c("Distribution 1", "Distribution 2"), each = length(dist1)),
                      index = 1:length(dist1),
                      probabilities = c(dist1, dist2))

    ggplot(data = dist, aes(x = index, y = probabilities, fill = dists)) +
      geom_bar(stat = "identity", position = position_dodge()) +
      geom_text(aes(y = probabilities, label = probabilities), vjust = 1.6, color="white", position = position_dodge(0.9), size = 3.5) +
      ggtitle("Probability Distributions of Distributions 1 and 2")

  }

  else {

    dist1 = data.frame(index = 1:length(dist1), probabilities = dist1)

    plot1 = ggplot(data = dist1, aes(x = index, y = probabilities)) +
      geom_bar(stat = "identity", color="red", fill="red") +
      geom_text(aes(y = probabilities, label = probabilities), vjust = 1.6, color="white", size = 3.5) +
      ggtitle("Probability Distribution of Distribution 1")

    print(plot1)

    dist2 = data.frame(index = 1:length(dist2), probabilities = dist2)

    plot2 = ggplot(data = dist2, aes(x = index, y = probabilities)) +
      geom_bar(stat = "identity", color="blue", fill="blue") +
      geom_text(aes(y = probabilities, label = probabilities), vjust = 1.6, color="white", size = 3.5) +
      ggtitle("Probability Distribution of Distribution 2")

    print(plot2)

  }

}
