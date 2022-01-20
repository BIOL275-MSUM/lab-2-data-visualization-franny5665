 penguins
library(tidyverse)
library(palmerpenguins)

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

