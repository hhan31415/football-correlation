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

## Average Possession

## Clearances

## Possession Won in the Final Third

## Conclusion
