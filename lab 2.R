
  penguins
library(tidyverse)
#> ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.0 ──
#> ✔ ggplot2 3.3.2     ✔ purrr   0.3.4
#> ✔ tibble  3.0.3     ✔ dplyr   1.0.2
#> ✔ tidyr   1.1.2     ✔ stringr 1.4.0
#> ✔ readr   1.4.0     ✔ forcats 0.5.0
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
library(palmerpenguins)
data(package = 'palmerpenguins')
penguins
glimpse(penguins)
#> Rows: 344
#> Columns: 7
#> $ species           <fct> Adelie, Adelie, Adelie, Adelie, Adelie, Adelie, Ade…
#> $ island            <fct> Torgersen, Torgersen, Torgersen, Torgersen, Torgers…
#> $ bill_length_mm    <dbl> 39.1, 39.5, 40.3, NA, 36.7, 39.3, 38.9, 39.2, 34.1,…
#> $ bill_depth_mm     <dbl> 18.7, 17.4, 18.0, NA, 19.3, 20.6, 17.8, 19.6, 18.1,…
#> $ flipper_length_mm <int> 181, 186, 195, NA, 193, 190, 181, 195, 193, 190, 18…
#> $ body_mass_g       <int> 3750, 3800, 3250, NA, 3450, 3650, 3625, 4675, 3475,…
#> $ sex               <fct> male, female, female, NA, female, male, female, mal…
ggplot(data=penguins)
penguins

#make plot
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm))

#after 3.3, each species its own color
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color=species))

#own color and island shape
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color=species, size=island))

#after 3.5, facet wrap
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color=species, size=island))+
  facet_wrap(~ species, nrow = 1)

#3.5, facet grid + facet wrap
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color=species, size=island))+
  facet_wrap(~ species, nrow = 1)+
  facet_grid(island ~ species)

#without facet wrap
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color=species, size=island))+
  facet_grid(island ~ species)

