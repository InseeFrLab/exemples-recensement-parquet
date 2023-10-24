#  Guide d'utilisation des données du recensement de la population au format `Parquet`

Ce guide présente quelques exemples d'utilisation des données du 
recensement de la population diffusées au format `Parquet`. 

- Exemples `Python` <img height="28" width="28" src="https://cdn.simpleicons.org/python/00ccff99" />
- Exemples `R` <img height="28" width="28" src="https://cdn.simpleicons.org/r/00ccff99" />
- Exemples `Observable Javascript` <img height="28" width="28" src="https://cdn.simpleicons.org/javascript/00ccff99" />

La version mise en forme au format HTML est disponible
sur
le site web du réseau des data scientists de la
statistique publique ([https://ssphub.netlify.app/post/parquetrp/](https://ssphub.netlify.app/post/parquetrp/)).

## Données

Ce dépôt accompagne la mise à disposition des données
du recensement de la population au format `Parquet`
sur le site [insee.fr](https://www.insee.fr/fr/statistiques/7706119?sommaire=7637890).


Les pages d'informations sur les données, où sont notamment disponibles
la documentation de celles-ci,
se retrouvent sur le site `insee.fr` aux adresses suivantes:

* [Fichier détail individuel](https://www.insee.fr/fr/statistiques/7706119?sommaire=7637890)
* [Fichier détail logement](https://www.insee.fr/fr/statistiques/7705908?sommaire=7637890)

Ces pages présentent aussi les données détaillées au format `CSV`. Néanmoins, le format `Parquet` 
est plus intéressant pour le traitement de celles-ci. Les données au format `Parquet` sont mises à disposition sur 
le site `data.gouv` aux adresses suivantes:

* [Fichier détail individuel](https://static.data.gouv.fr/resources/recensement-de-la-population-fichiers-detail-individus-localises-au-canton-ou-ville-2020-1)
* [Fichier détail logement](https://static.data.gouv.fr/resources/recensement-de-la-population-fichiers-detail-individus-localises-au-canton-ou-ville-2020-1)

Ce guide propose d'utiliser [`DuckDB`](https://duckdb.org/) à travers
plusieurs langages pour effectuer des traitements sur les fichiers
détails du recensement.
Par rapport à d'autres approches, [`DuckDB`](https://duckdb.org/) a été choisi pour son efficacité ainsi que pour son universalité.



## Contributeurs

Antoine Palazzolo, Lino Galiana
