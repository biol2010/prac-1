skeleton_pt1 <- '##### 1. set-up workspace #####

# load packages 
# note: some might need installing on your personal device; 
# if so, use install.package("package_name")
library(ragg) # tools for saving plots
library(readxl) # import directly from .xlsx files
library(tidyverse) # tools for modifying and plotting data

##### 2. import data; clean it #####

# import raw data
raw_egg_dat <- read.csv(file = "data/biol2010_prac_1_dataset_2023.csv")

# OR! use the raw data that YOU collected this year
# just remove the hashtag to un-comment this line of code below:
#raw_egg_dat <- read.csv(file = "data/biol2010_prac_1_dataset_2024.csv")

# have a look at raw_egg_dat
View(raw_egg_dat)

# clean up the raw data
egg_dat <- raw_egg_dat %>% 
  # the "response" column is a bit vague -- we know that is the 
  # number of eggs laid -- so we can rename it to "egg_count"
  rename(egg_count = response) %>% 
  # in entomology, we also remove any cage where no eggs were laid at all 
  group_by(cage) %>% 
  filter(sum(egg_count) != 0) %>% 
  ungroup()

##### 3. summarise data; plot it #####

# summarise mean and SE for a plotting dataset
plot_egg_dat <- egg_dat %>% 
  group_by(plant) %>% 
  summarise(mean_egg_count = mean(egg_count),
            se_egg_count = sd(egg_count)/sqrt(n())) %>% 
  ungroup()

# make a plot
finished_plot <- '

skeleton_pt2 <- '# save finished_plot to a file --
# you need to run each of the following THREE lines, in order, 
# to completely create a file
agg_png(filename = "figure-output/prac1-figure.png",
        width = 8, height = 8, 
        units = "cm", res = 900,
        scaling = 1)

finished_plot

dev.off()

##### 4. analyse data #####
'

skeleton <- tibble(exercise = c("skeleton_pt1",
                                "skeleton_pt2"),
                   code = c(skeleton_pt1,
                            skeleton_pt2))
