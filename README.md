# 📈 Estimation de la Consommation Autonome et de la Propension Marginale à Consommer au Bénin (1980–2020)

Ce projet applique un modèle linéaire inspiré de la théorie keynésienne pour estimer la **consommation autonome** (𝐶₀) et la **propension marginale à consommer** (c) au Bénin, sur la période de 1980 à 2020.

L'analyse repose sur des données de **consommation finale** et de **PIB nominal** issues de trois sources distinctes :  
- INStaD (Institut National de la Statistique et de la Démographie)  
- BCEAO (Banque Centrale des États de l’Afrique de l’Ouest)  
- Banque Mondiale

---

## 📌 Objectifs

- Représenter graphiquement l’évolution du PIB et de la consommation finale.
- Estimer un modèle linéaire de type keynésien : `Ct = C0 + cYt`
- Interpréter les résultats d’estimation et valider la loi psychologique fondamentale de Keynes.

---

## 🗃️ Données utilisées

Les données utilisées sont en valeurs courantes (milliards de FCFA) et couvrent la période 1980–2020. Elles proviennent de trois bases fiables :

- [INStaD](https://instad.bj/)
- [BCEAO](https://www.bceao.int/)
- [Banque Mondiale](https://data.worldbank.org/)

> 🔒 *Les données brutes ne sont pas incluses dans ce dépôt mais peuvent être obtenues directement depuis les sources officielles.*

---

## 🔢 Modèle économétrique utilisé

Le modèle keynésien de base est :  
**𝐶𝑡 = 𝐶₀ + 𝑐 × 𝑌𝑡 + ε𝑡**

Où :
- 𝐶𝑡 : consommation finale
- 𝑌𝑡 : PIB nominal
- 𝐶₀ : consommation autonome
- 𝑐 : propension marginale à consommer
- ε𝑡 : terme d'erreur

Les estimations ont été faites avec le logiciel **R** sur chacune des trois sources de données.

---

## 📊 Résultats

| Source   | Consommation autonome (𝐶₀) | Propension marginale à consommer (𝑐) | R² ajusté |
|----------|-----------------------------|--------------------------------------|-----------|
| INStaD   | 164,14                      | 0,82768                              | 0,9911    |
| BCEAO    | 176,09                      | 0,82878                              | 0,9910    |
| BM       | 139,54                      | 0,81822                              | 0,9959    |

Tous les coefficients sont significatifs au seuil de 1 % (p < 0.01). Le signe de 𝑐 est positif et compris entre 0 et 1, conformément à la théorie keynésienne.

---

## 📈 Visualisations

Les graphiques montrent une **relation croissante** entre consommation et PIB, avec un **PIB toujours supérieur à la consommation finale**, ce qui est cohérent économiquement.

---

## 🧑‍💻 Auteur

- **Nom** : BOCO Sèjro Toussaint  
- **Formation** : Ingénieur Statisticien Économiste


