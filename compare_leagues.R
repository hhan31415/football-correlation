#install.packages("dplyr")
library(dplyr)

#list all output files
result_files <- list.files("output", pattern = "_correlation_results.csv", full.names = TRUE)

# Empty list to collect each league's table
all_results <- list()

for (file in result_files) {
  league_data <- read.csv(file)
  all_results[[file]] <- league_data
}

# Stack them all into one big table
all_leagues <- do.call(rbind, all_results)
rownames(all_leagues) <- NULL

# Filter out unwanted leagues:
all_leagues <- all_leagues %>% filter(league != "mls")

stat_variability <- all_leagues %>%
  group_by(stat) %>%
  summarize(
    min_r  = min(pearson_r),
    max_r  = max(pearson_r),
    range  = max_r - min_r,
    mean_r = mean(pearson_r),
    mean_p = mean(pearson_p)
  ) %>%
  arrange(desc(range))

print(stat_variability, n = 30)

# Grab the top 5 most variable stats
top_variable_stats <- stat_variability$stat[1:10]

# Pull every league's row for just those stats
detail_view <- all_leagues %>%
  filter(stat %in% top_variable_stats) %>%
  select(stat, league, pearson_r, pearson_p) %>%
  arrange(stat, league)
detail_view <- detail_view %>%
  mutate(pearson_p = formatC(pearson_p, format = "f", digits = 6))
detail_view