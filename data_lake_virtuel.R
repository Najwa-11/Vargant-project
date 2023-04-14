library(sparklyr)
library(dplyr)

# Configuration de la connexion à Spark
spark_config <- spark_config()
spark_config$sparklyr.shell.driver_memory <- "4g"
sc <- spark_connect(master = "yarn", config = spark_config)

# Chargement des données depuis le data lake virtuel
df <- spark_read_parquet(sc, "data")

# Transformation et analyse des données
df_summary <- df %>%
  group_by(col1) %>%
  summarise(mean_col2 = mean(col2),
            max_col2 = max(col2),
            min_col2 = min(col2))

# Visualisation des résultats
plot(df_summary$col1, df_summary$mean_col2, type = "l", xlab = "col1", ylab = "mean_col2")

# Fermeture de la connexion à Spark
spark_disconnect(sc)
