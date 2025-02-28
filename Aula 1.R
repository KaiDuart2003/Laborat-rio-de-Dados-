#A PARTIR DA AULA DE ONTEM DE ECONOMETRIA (AULA 2)
#BUSQUE DUAS VARIÁVEIS DE SEU INTERESSE NO BANCO MUNDIAL 
#CRIE UM ARQUIVO DE TODOS OS PAÍSES PARA 2023, POR EXEMPLO
#dados ok

#E UM ARQUIVO DE DADOS NO BRASIL (TODO PERÍODO)

#INSTALAR PACOTE 
#install.packages("WDI")

#CARREGAR O PACOTE
library(WDI)

#BUSCAR DADOS DE ACESSO À ELETRICIDADE EM ÁREAS RURAIS
dados <- WDI(
  country = "all", #para todos os países
  indicator = "EG.ELC.ACCS.RU.ZS",
  start = 2023,
  end = 2023,
  extra = TRUE)

#exibir primeiros registros
head(dados)

dadosbr <- WDI(
  country = "BR",
  indicator = "EG.ELC.ACCS.RU.ZS",
  start = 2023,
  end = 2023,extra = TRUE)

# Instalar o pacote WDI (se ainda não tiver)
install.packages("WDI")

# Carregar o pacote
library(WDI)

# Buscar os dados para os dois indicadores
dados2 <- WDI(
  country = "all",   # "all" para todos os países ou use c("BR", "US") para países específicos
  indicator = c("EG.ELC.ACCS.RU.ZS", "EG.USE.PCAP.KG.OE"),  
  start = 2000,      # Ano inicial
  end = 2023,        # Ano final
  extra = TRUE       # Adiciona informações extras como região e nível de renda
)

# Exibir os primeiros registros
head(dados)

brasil <- subset(dados, country == "Brazil")
head(brasil)
