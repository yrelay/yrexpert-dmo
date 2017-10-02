# yrexpert-dmo

yrexpert-dmo est une partition de démonstration pour le système expert *yrexpert* de [Yrelay](http://www.yrelay.fr). Vous pourrez mettre en oeuvre cette partition de démonstration en mettant à jour **DMO** dans le paquet [**yrexpert-terminal**](https://github.com/yrelay/yrexpert-terminal).

* **Page d'accueil :** [github.com/yrelay/yrexpert-dmo](https://github.com/yrelay/yrexpert-dmo)
* **Documentation :** [yrelay.github.io/yrexpert-dmo](https://yrelay.github.io/yrexpert-dmo/)

## 1. Notions abordées dans cette démonstration

Cette démonstration (**DMO**) regroupe le savoir faire expert d'un botaniste lui permettant la reconnaissance des fleurs sauvages. Cette *démo* nous permettra d'aborder les notions suivantes :

* **Le lexique** contient tous les attributs utilisés dans la base de données, afin que toutes les abréviations non ambigus d'un attribut ou d'un mot clef soient reconnus. En fait le *LEXIQUE* contient le vocabulaire spécifique de l’expert, qui définit les objets du savoir-faire et les caractéristiques de ces objets.

* **Le répertoire** est un ensemble dans lequel se trouve des individus de même nature. II se définit par un savoir-faire semblable applique 4 ses individus. Exemple : PLANTE, BIOTOPE, ... Les répertoires d'une application constituent sa base de données.

* **L'individu** est un élément d'un répertoire et un seul. II est caractérisé par ses attributs, et ses liens qui le relient à d'autres individus. II possède au moins L’attribut *NOM*.

* **L'attribut** est une caractéristique permettant de décrire ou d'identifier un individu. Exemple : NOM, EPAISSEUR, COULEUR, ... La connaissance sur un individu sert à produire ou à contrôler ses attributs. Lorsqu'un attribut est multivalué, ses différentes valeurs sont accessibles à partir d'indice.

* **Le lien** relie deux individus d'un même répertoire ou de deux répertoire différents, lies par une relation. Un lien n'est pas figé au cours du temps, selon révolution de l’état des individus peut être détruit ou produit. Un lien permet aussi le stockage de données sur d'autres répertoires ou individus.
II existe trois types de liens, HIÉRARCHIQUE, INVOLUTIF ou RELATIONNEL, de plus un lien est qualifié s'il porte des attributs.

* **Le schéma de données** décrit l’ensemble des répertoires avec leurs relations les unissant entre eux. II pose la trame de référence de la base de données qui va être construite. Le système le consultera par la suite pour vérifier la cohérence des liens unissant les individus et pour effectuer des contrôles. Le schéma de données a donc le rôle de plan (ou de maquette) de la base de données qui lui est associée. II est très important car il conditionnera l'ensemble des futurs traitements.

* **Léditeur en arbre** permet la visualisation arborescente de certaines informations mises en relations.

* **La liste** est un sous ensemble d’individus logiques, sélectionnes parmi les individus d'un répertoire ou d'une autre liste. Il s'agit en effet d'une représentation logique, car une liste ne contient pas les individus tels qu'ils sont définis avec leurs attributs et leurs liens, mail leur chemin d'accès dans la base.
Cette distinction est importante car elle permet de comprendre qu’une modification d'individus partir d'un traitement effectue sur une liste, survive à la destruction de cette liste. Une liste peut être le résultat d'une requête ou d'une manipulation ensembliste.

* **La requête** est un ensemble de critères permettant de sélectionner la liste d'individus les vérifiant. Les critères sont exprimes par des conditions portant sur les attributs de ces individus. Une requête s'active sur une liste et produit en résultat la liste créée.

* **Le traitement** est un des moyens qu'offre DKBMS pour stocker des connaissances dans DKBMS. Un traitement est une poche de connaissances dans lequel les règles sont organisées de façon procédurale.

## 2. Fonctions existatntes dans yrexpert

Présentation des concepts et des termes qui sont utilises dans les applications et l'approche méthodologique **yrexpert**. On distingue cinq grands thèmes: les DONNÉES, les CONNAISSANCES, l’ACTIVATION, l‘INTERACTION et les ECHANGES.

### 2.1. Les données

#### 2.1.1. Outils pour la SAISIE des DONNÉES
* les dialogues
* les attributs prédéfinis
* les attributs prévalués
* les saisies interactives
* les saisies rapides

#### 2.1.2. Outils pour le STOCKAGE des DONNÉES
* Les attributs
* Les individus
* les répertoires
* l'attribut NOM
* l'attribut DATE
* les liens
* le lexique
* les synonymes

#### 2.1.3. Outils pour la RECHERCHE le REGROUPEMENT et la PRESENTATION des DONNÉES
* les requêtes
* les lister
* les histogrammes
* la recherche associative
* les formats
* les modèles

### 2.2. Les connaissances

#### 2.2.1. Outils pour le STOCKAGE des CONNAISSANCES
* les abaques
* les règles
* les traitements

### 2.3. L'activation

#### 2.3.1. Outils pour l'ACTIVATION de la CONNAISSANCE
* moteur d'inférence
* non procédural
* procédural
* faiblement procédural
* rémanence

### 2.4. L'interaction et l'échange

#### 2.5.1. Outils pour l'ECHANGE
* les passerelles

## 3. Fonctionnement

**yrexpert-dmo** ne fonctionne pas seul, vous devez utiliser **yrexpert-terminal** et mettre à jour la partition *DMO*. La documentation se trouve sur les dépôts suivants :
* [**L'arborescence source yrexpert-terminal**](https://github.com/yrelay/yrexpert-terminal.git) de *Yrelay* contient *yrexpert* en mode terminal.
* [**L'arborescence source yrexpert-MAN**](https://github.com/yrelay/yrexpert-MAN.git) de *Yrelay* contient les manuels de *yrexpert*.

## 4. Installation

### 4.1. Installer yrexpert-terminal

Installer [yrexpert-terminal](https://github.com/yrelay/yrexpert-terminal.git), vérifier qu'il fonctionne.

### 4.2. Cloner le code source yrexpert-dmo depuis le dépôt

Si vous souhaiter garder votre ancienne partition DMO, vous devez la renommer.

	sudo mv /opt/yrelay/yrexpert-terminal/partition/dmo /opt/yrelay/yrexpert-terminal/partition/dmo$(date +%Y%m%d%H%m%s)

Nous créons une entrée unique pour toutes les références Yrelay. Il s'agit de votre emplacement d'installation pour yrexpert-dmo.

	$ sudo mkdir ~/Yrelay
	$ cd ~/Yrelay
	$ git clone https://github.com/yrelay/yrexpert-dmo.git
	$ sudo rm -rf /opt/yrelay/yrexpert-terminal/partition/dmo # ATTENTION votre ancienne partition DMO sera supprimée.
	$ sudo cp -r /yrelay/yrexpert-dmo /opt/yrelay/yrexpert-terminal/partition/dmo

### 4.3. Créer la base de données de DMO

Créer la base de données de DMO à partir du fichier plat *dmo.zwr*.

	hamid@srv10:~$ /opt/yrelay/yrexpert-terminal/partitions/dmo/scripts/CreerGlobalsDMO.sh

Réponse :

	{--- Début du script **CreerGlobalsDMO.sh**
	yxp_dist=/opt/yrelay/yrexpert-terminal
	{--- Début du script **env.conf**
	gtm_dist=/opt/fisglobal/gtm
	---} Fin du script **env.conf**

	Créer la base de données. Ceci peut prendre un moment...

	/opt/yrelay/yrexpert-terminal
	/opt/fisglobal/gtm
	/opt/yrelay/yrexpert-terminal/partitions/dmo/globals/DMO.gld


	%GDE-I-GDUSEDEFS, Using defaults for Global Directory 
		/opt/yrelay/yrexpert-terminal/partitions/dmo/globals/DMO.gld

	GDE> 
	GDE> 
	GDE> 
	GDE> 
	%GDE-I-VERIFY, Verification OK

	%GDE-I-GDCREATE, Creating Global Directory file 
		/opt/yrelay/yrexpert-terminal/partitions/dmo/globals/DMO.gld
	Created file /opt/yrelay/yrexpert-terminal/partitions/dmo/globals/DMO.dat
	GT.M MUPIP EXTRACT
	21-JAN-2013  20:49:07 ZWR
	Beginning LOAD at record number: 3

	LOAD TOTAL		Key Cnt: 90536  Max Subsc Len: 255  Max Data Len: 469
	Last LOAD record number: 90538

	---} Fin du script **CreerGlobalsDMO.sh**

### 6. Lancer yrexpert-terminal

Lancer le fichier *yrexpert* :

	/opt/yrelay/yrexpert-terminal/scripts/yrexpert

Suivre les instructions à l'écran.

### 6. Tester yrexpert-terminal

Pour tester cette démonstration suivre la [documentation](https://github.com/yrelay/yrexpert-dmo/blob/master/documents/TesterParttitionDMO.md).

## 7. Comment contribuer ?

1. Duppliqer le dépôt (utiliser *Fork*)
2. Créer un nouvelle branche (`git checkout -b ma-branche`)
3. Commit(er) votre proposition d'évolution (`git commit -am 'Ajouter mon évolution'`)
4. Push(er) la branche (`git push origin ma-branche`)
5. Créer une demande d'évolution (utiliser *Pull Requests*)

## 9. Liens

* Yrelay Page d'accueil : https://www.yrelay.fr
* Yrelay Référentiels : https://code.yrelay.fr
* Yrelay Github : https://github.com/Yrelay

