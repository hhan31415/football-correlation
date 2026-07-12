# Correlation Between Stats and Success Across Leagues
## by Heechan Han

## Contents
- [Introduction](#introduction)
- [Conclusion](#conclusion)

## Introduction
This project aims to explore various football stats that best correlate with success, and compare how this correlation differs across different stats across different leagues. The general idea is as follows. We will take football club statistics scraped from my from [FotMob data scraper](https://github.com/hhan31415/fotmob-scraper) for six different leagues in the 2025-2026 season: the Big 5 leagues (i.e. Premier League, La Liga, Bundesliga, Serie A, Ligue 1) and the MLS. These statistics include xG, average possession, corners taken, clearences, etc. 

Then for each league, we will use R to compute and compile the correlation between total points in the league season and each of these statistcs. The correlation data will be given by the Pearson's and Spearman's correlation tests. Removing obvious correlating stats like wins and goals scored, we want to see if for each league, there are any non-trivial statistics that correlate highly to on-field success.

We then want to compare these correlation numbers across various leagues to explore if there is any meaningful difference between the games being played across Europe and the US. In particular, we want to see if there are statistics which have a highest variablity of R values across leagues while still maintaining significance. We will later see that a few non-trivial example can pop up.

## Computing Correlation

## Comparing Leagues
Now that we have the correlation values for each statistic, we want to compare these values across leagues to see if there are any meaningful differences between the leagues. In particular, the following are some examples of interesting observations we may look for:
- Statistics not directly connected to wins or goals which have a significant, high correlation across multiple leagues,
- Stats which have high correlation and significant p-values in some leagues, but low correlation in others,
- Stats which have positive correlation in some leagues but negative correlation in others.

To do this, I combined all the previous csvs containing correlation data into one massive table grouping by stats, then computed various values like range of R values and average R values across the leagues. For example, the following is one output for the stat "Accurate crosses per match":
```
   stat                            min_r   max_r range  mean_r   min_p max_p mean_p
   <chr>                           <dbl>   <dbl> <dbl>   <dbl>   <dbl> <dbl>  <dbl>
   Accurate.long.balls.per.match -0.299   0.151  0.450 -0.0647 0.200   0.986 0.584 
```
which tells us that the stat "accurate crosses per match" has a great range of R values and has both positive and negative correlation across the 5 major leagues + the MLS.

Of course, this itself still may not be all that interesting, if the correlation is not significant. Indeed, certain stats

## Average Possession

## Clearances

## Possession Won in the Final Third

## Conclusion
