
sim_ttest <- function(n = 30, mu = 0, sigma = 5) {
  x <- rnorm(n, mean = mu, sd = sigma)
  
  tt <- t.test(x, mu = 0)
  
  tibble(
    estimate = as.numeric(tt$estimate),
    p.value  = tt$p.value
  )
}