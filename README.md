# Application-web-base-sur-MVC2-et-JPA
L’objectif de cet atelier est la mise en place d’une application web qui simule le comportement d’un site web e-Commerce en se basant principalement sur 
 l’API JPA « java persistance API » et le patron de conception MVC2 qui dépend d'une seule servlet qui va se charger de la gestion de tous les actions nécessaires pour chaque gestion ,de façon que note application va se composer de 3 espaces : 
   espace Internaute , 
   espace vitrine ,
   espace internaute 
voilà le diagramme de classe qui représente nos classes utilisés 
<img width="401" alt="diagrammeclassevitrine" src="https://user-images.githubusercontent.com/100537561/204676070-2638fc05-f9ca-4ca4-9187-0d24a5ef2254.png">
de sorte qu'on a utlisé 4 classes : 
*internaute : qui sera l'utilisateur de l'application web où il va se connecter d'abord pour pouvoir consulter la vitrine 
*Panier : c'est la panier de l'internaute qui va contenir les articles favoris ou commandés par lui 
*Article: qui va contenir tous les articles 
*Categorie : qui va contenir tous les categories du vitrine 

avec l'utilisation des relations de mapping o/r 
entre internaute et panier : un internaute possde un seule panier et un panier appartient à un seul internaute.
entre Panier et Article : un panier peut contenir plusieurs articles comme les articles peuvent appartiennent aux différents paniers .
entre Article et Catégorie : ue catégorie contient plusieurs articles et un article appartient à une catégorie.


Concernant le code source de l'application web , comme il est déjà cité , on s'est basé sur l'api jpa : java persistence api, et on a suit le patron de conception MVC2, de façon qu'on a créé pour chaque gestion une servlet qui s'est chargé de de la gestion de plusieurs actions 
--ServletInternaute : qui gère l'authentification concernant l'inscription et la connexion de l'internaute au application en utlisant les sessions pour pouvoir possèder un panier .
--ServletVitrine : qui gère l'affichage des catègories et des articles endedans , permet de commander et de consulter le panier tant que l'internaute est authentifié 
--PanierServlet qui gère le panier en ce qui concerne l'affichage des articles commandés/choisis par l'internaute , le prix totel, et la validation du commande.
 
Traitement du site web: 
la premiere interface permet à l'internaute l'inscription et la connexion : 

<img width="960" alt="home" src="https://user-images.githubusercontent.com/100537561/204680248-94d7e53a-fe80-46f0-975b-14c2b7ae348f.png">
 
Lorsqu'on clique sur inscription on va à la page d'inscription : 

<img width="956" alt="insciption" src="https://user-images.githubusercontent.com/100537561/204680332-7ac0568b-204f-46ea-bf91-78cc06cd4bd1.png">

et lorsqu'on clique sur connexion l'internaute va se trouver dans la page d'authentification en utilisant l'email et le password qu'il a utilisé lors de l'inscription si les données sont irronés un message d'erreur va s'afficher 
sinon l'internaute va se trouver dans notre vitrine pour voir les différentes cétégoris de l'application web : 

<img width="959" alt="liste cate" src="https://user-images.githubusercontent.com/100537561/204680804-c9dd01ab-e22d-4121-947c-5e2f69576b3f.png">

dans cette page jsp on voit la liste des categories contenant le nombre et le nom du catégorie , plus elle montre aussi qui est connecté pour le moment en cliquant son nom , l'internaute peut se déconnecter :
<img width="199" alt="deconnx" src="https://user-images.githubusercontent.com/100537561/204681072-6b5d0665-2443-4c93-be0c-8d179fc00041.png">


par suite si l'internaute clique sur le nombre de catégorie il va à la liste des articles d'une catégorie précise , prenant par exemple la catégorie shirt : 

<img width="958" alt="liste article" src="https://user-images.githubusercontent.com/100537561/204681282-3c2bcb84-72e1-4003-a204-2aba87a53a31.png">
cette interface lui permet à spécifier la quantité d'article qu'il veut et commander , plus qu'il puisse consulter son panier , si il clique sur l'icon du panier en ce dessus l'internaute va voir son panier : 

<img width="956" alt="PANIER" src="https://user-images.githubusercontent.com/100537561/204681659-fbed91ef-5848-49b5-b333-bf7e913cf572.png">
comme il est montré il peut voir la liste des articles choisis avec la quantité qu'il a demandé de cet article , comme il peut supprimmer les articles de son panier avant de valiser si jamais il veut recommander plus ou vider son panier.

