##########################################################
## ESTIMATIONS SUR REVENU ET CONSOMMATION POUR LE BENIN ##
##########################################################

# IMPORTATION DES BASES DE DONNEES

library(readxl)
Data_INStaD = read_excel("BD.xlsx", sheet = "INStaD")
Data_BCEAO = read_excel("BD.xlsx", sheet = "BCEAO")
Data_BM = read_excel("BD.xlsx", sheet = "BM")

# VISUALISATIONS DES DONNEES

library(ggplot2)

## POUR LES DONNEES DE L'INStaD

ggplot(Data_INStaD, aes(x=ANNEE)) +
  geom_line(aes(y = PIB_nominal, color = "PIB nominal")) +
  geom_line(aes(y = Cons_finale, color = "Consommation finale")) +
  scale_color_manual(values=c("PIB nominal" = "blue", "Consommation finale" = "red")) +
  theme(legend.position = "top", legend.title = element_blank()) +
  labs(x = "Année", y = "") +
  ggtitle("Consommation finale et PIB nominal au Bénin de 1980 à \n 2020 (INStaD, Données en milliards de FCFA)")

## POUR LES DONNEES DE LA BCEAO

ggplot(Data_BCEAO, aes(x=ANNEE)) +
  geom_line(aes(y = PIB_nominal, color = "PIB nominal")) +
  geom_line(aes(y = Cons_finale, color = "Consommation finale")) +
  scale_color_manual(values=c("PIB nominal" = "blue", "Consommation finale" = "red")) +
  theme(legend.position = "top", legend.title = element_blank()) +
  labs(x = "Année", y = "") +
  ggtitle("Consommation finale et PIB nominal au Bénin de 1980 à \n 2020 (BCEAO, Données en milliards de FCFA)")

## POUR LES DONNEES DE LA BM

ggplot(Data_BM, aes(x=ANNEE)) +
  geom_line(aes(y = PIB_nominal, color = "PIB nominal")) +
  geom_line(aes(y = Cons_finale, color = "Consommation finale")) +
  scale_color_manual(values=c("PIB nominal" = "blue", "Consommation finale" = "red")) +
  theme(legend.position = "top", legend.title = element_blank()) +
  labs(x = "Année", y = "") +
  ggtitle("Consommation finale et PIB nominal au Bénin de 1980 à \n 2020 (Banque Mondiale, Données en milliards de FCFA)")

# ESTIMATIONS DU MODELE LINEAIRE

## POUR LES DONNEES DE L'INStaD

attach(Data_INStaD)
reg_instad = lm(Cons_finale ~ PIB_nominal)
summary(reg_instad)
detach(Data_INStaD)

## POUR LES DONNEES DE LA BCEAO

attach(Data_BCEAO)
reg_bceao = lm(Cons_finale ~ PIB_nominal)
summary(reg_bceao)
detach(Data_BCEAO)

## POUR LES DONNEES DE LA BM

attach(Data_BM)
reg_bm = lm(Cons_finale ~ PIB_nominal)
summary(reg_bm)
detach(Data_BM)