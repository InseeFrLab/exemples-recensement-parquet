library(readr)
library(dplyr)
library(yaml)

config <- yaml.load_file("config.yaml")
path_data <- config$path_data

dico_variables_brut <- read_csv2(
  paste0(path_data, "/Varmod_LOGEMT_2019.csv")
) %>%
  mutate_all(as.character) %>%
  select(-LONG_VAR)

variables_a_grouper <- c("COMMUNE", "ARM", "IRIS", "AEMM", "ANEM", "INEEM",
                         "INP11M", "INP15M", "INP17M", "INP19M", "INP24M",
                         "INP3M", "INP5M", "INP60M", "INP65M", "INP75M",
                         "INPAM", "INPER", "INPER1", "INPER2", "INPOM", "INPSM",
                         "NBPI", "TRIRIS")

dico_variables <- dico_variables_brut %>%
  filter(COD_VAR %in% variables_a_grouper) %>%
  group_by(COD_VAR, LIB_VAR, TYPE_VAR) %>%
  slice(c(1, 2, n())) %>%
  bind_rows(dico_variables_brut %>%
              filter(COD_VAR %in% variables_a_grouper) %>%
              group_by(COD_VAR, LIB_VAR, TYPE_VAR) %>%
              summarise_all(~ "...")) %>%
  arrange(COD_VAR) %>%
  slice(c(1, 2, 4, 3)) %>%
  ungroup() %>%
  bind_rows(dico_variables_brut %>%
              filter(!COD_VAR %in% variables_a_grouper)) %>%
  arrange(COD_VAR)

write_csv(dico_variables,
          file = paste0(path_data, "/dictionnaire_variables_2019.csv"))
