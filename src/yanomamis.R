library(tidyverse)

malaria2014 <- read_csv("C:/Users/rodol/OneDrive/Desktop/Sumauma Yanomamis/data/malaria/5_Casos_malaria_DSEIY_Polo_Base_2014_2022 - DSEI_Yanomami_2014.csv", 
                        skip = 2) %>% rename(polo = ...1) %>% head(-2) %>% mutate(ano=2014) %>% janitor::clean_names()
malaria2015 <- read_csv("C:/Users/rodol/OneDrive/Desktop/Sumauma Yanomamis/data/malaria/5_Casos_malaria_DSEIY_Polo_Base_2014_2022 - DSEI_Yanomami_2015.csv", 
                        skip = 2) %>% rename(polo = ...1) %>% head(-2) %>% mutate(ano=2015) %>% janitor::clean_names() %>% rename(total=x11)
malaria2016 <- read_csv("C:/Users/rodol/OneDrive/Desktop/Sumauma Yanomamis/data/malaria/5_Casos_malaria_DSEIY_Polo_Base_2014_2022 - DSEI_Yanomami_2016.csv", 
                        skip = 2) %>% rename(polo = ...1) %>% head(-2) %>% mutate(ano=2016) %>% janitor::clean_names()
malaria2017 <- read_csv("C:/Users/rodol/OneDrive/Desktop/Sumauma Yanomamis/data/malaria/5_Casos_malaria_DSEIY_Polo_Base_2014_2022 - DSEI_Yanomami_2017.csv", 
                        skip = 2) %>% rename(polo = ...1) %>% head(-2) %>% mutate(ano=2017) %>% janitor::clean_names() %>% rename(total=x11)
malaria2018 <- read_csv("C:/Users/rodol/OneDrive/Desktop/Sumauma Yanomamis/data/malaria/5_Casos_malaria_DSEIY_Polo_Base_2014_2022 - DSEI_Yanomami_2018.csv", 
                        skip = 2) %>% rename(polo = ...1) %>% head(-2) %>% mutate(ano=2018) %>% janitor::clean_names() %>% rename(total=x11)
malaria2019 <- read_csv("C:/Users/rodol/OneDrive/Desktop/Sumauma Yanomamis/data/malaria/5_Casos_malaria_DSEIY_Polo_Base_2014_2022 - DSEI_Yanomami_2019.csv", 
                        skip = 2) %>% rename(polo = ...1) %>% head(-2) %>% mutate(ano=2019) %>% janitor::clean_names() %>% rename(total=x11)
malaria2020 <- read_csv("C:/Users/rodol/OneDrive/Desktop/Sumauma Yanomamis/data/malaria/5_Casos_malaria_DSEIY_Polo_Base_2014_2022 - DSEI_Yanomami_2020.csv", 
                        skip = 2) %>% rename(polo = ...1) %>% head(-2) %>% mutate(ano=2020) %>% janitor::clean_names() %>% rename(total=x11)
malaria2021 <- read_csv("C:/Users/rodol/OneDrive/Desktop/Sumauma Yanomamis/data/malaria/5_Casos_malaria_DSEIY_Polo_Base_2014_2022 - DSEI_Yanomami_2021.csv", 
                        skip = 2) %>% rename(polo = ...1) %>% head(-2) %>% mutate(ano=2021) %>% janitor::clean_names() %>% rename(total=x11)
malaria2022 <- read_csv("C:/Users/rodol/OneDrive/Desktop/Sumauma Yanomamis/data/malaria/5_Casos_malaria_DSEIY_Polo_Base_2014_2022 - DSEI_Yanomami_2022.csv", 
                        skip = 2) %>% rename(polo = ...1) %>% head(-2) %>% mutate(ano=2022) %>% janitor::clean_names() %>% rename(total=x11)

malaria <- rbind(malaria2014,malaria2015,malaria2016,malaria2017,malaria2018,malaria2019,malaria2020,malaria2021,malaria2022) %>% select(-total)
malaria <- malaria %>%
  gather("faixa_etaria", "valor", 2:10) 
