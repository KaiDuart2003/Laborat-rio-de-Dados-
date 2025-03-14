#A PARTIR DA AULA DE ONTEM DE ECONOMETRIA (AULA 2)
#BUSQUE DUAS VARIÁVEIS DE SEU INTERESSE NO BANCO MUNDIAL 
#CRIE UM ARQUIVO DE TODOS OS PAÍSES PARA 2023, POR EXEMPLO
#dados ok

#E UM ARQUIVO DE DADOS NO BRASIL (TODO PERÍODO)

#INSTALAR PACOTE 
#install.packages("WDI")

#CARREGAR O PACOTE
library(WDI)

# Instalar pacotes (se ainda não tiver)
#install.packages("WDI")
#install.packages("ggplot2")
#install.packages("dplyr")

# Carregar pacotes
library(WDI)
library(ggplot2)
library(dplyr)

# Busca dos dados para acesso à eletricidade e uso de energia per capita
dados <- WDI(
  country = "all",   
  indicator = c("EG.ELC.ACCS.RU.ZS", "EG.USE.PCAP.KG.OE"),  
  start = 2000,      
  end = 2023,        
  extra = TRUE      
)

# Dados do Brasil

brasil <- subset(dados, country == "Brazil")

ggplot(brasil, aes(x = year, y = EG.ELC.ACCS.RU.ZS)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "red", size = 2) +
  labs(
    title = "Acesso à Eletricidade em Áreas Rurais no Brasil (2000-2023)",
    x = "Ano",
    y = "Porcentagem da População (%)"
  ) +
  theme_minimal()

#Gráfico de Uso de Energia Per Capita

ggplot(brasil, aes(x = year, y = EG.USE.PCAP.KG.OE)) +
  geom_line(color = "darkgreen", size = 1) +
  geom_point(color = "orange", size = 2) +
  labs(
    title = "Uso de Energia Per Capita no Brasil (2000-2023)",
    x = "Ano",
    y = "kg de óleo equivalente per capita"
  ) +
  theme_minimal()


