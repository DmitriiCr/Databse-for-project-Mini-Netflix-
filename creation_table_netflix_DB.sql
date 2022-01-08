DROP TABLE IF EXISTS LesVisionnages;
DROP TABLE IF EXISTS LesPreferences;
DROP TABLE IF EXISTS LesActeurs;
DROP TABLE IF EXISTS LesRealisateurs;
DROP TABLE IF EXISTS LesPersonnes;
DROP TABLE IF EXISTS LesOeuvres;
DROP TABLE IF EXISTS LesUtilisateurs;
DROP TABLE IF EXISTS LesGenres;
DROP TABLE IF EXISTS LesPays;

PRAGMA FOREIGN_KEYS=ON;

CREATE TABLE LesPersonnes (
    nom_personne TEXT NOT NULL,
    prenom_personne TEXT NOT NULL,
    date_naissance_personne DATE,
    pays_personne TEXT NOT NULL,
    CONSTRAINT PK_Personnes PRIMARY KEY (nom_personne, prenom_personne),
    CONSTRAINT FK_pays_Personnes FOREIGN KEY (pays_personne) REFERENCES LesPays (nom_pays)
);

CREATE TABLE LesOeuvres (
    titre_oeuvre TEXT NOT NULL,
    type_oeuvre TEXT NOT NULL,
    duree_film INTEGER,
    nb_saisons_serie INTEGER,
    date_sortie_oeuvre DATE NOT NULL,
    genre_oeuvre TEXT NOT NULL,
    CONSTRAINT PK_Oeuvres PRIMARY KEY (titre_oeuvre),
    CONSTRAINT CK_type_Oeuvres CHECK (
        (type_oeuvre = 'film' AND duree_film IS NOT NULL AND duree_film > 0 AND nb_saisons_serie IS NULL) OR
        (type_oeuvre = 'serie' AND nb_saisons_serie IS NOT NULL AND nb_saisons_serie > 0 AND duree_film IS NULL)
    ),
    CONSTRAINT FK_genre_Oeuvres FOREIGN KEY (genre_oeuvre) REFERENCES LesGenres (nom_genre)
);

CREATE TABLE LesUtilisateurs (
    nom_utilisateur TEXT NOT NULL,
    adresse_mail_utilisateur TEXT NOT NULL,
    date_naissance_utilisateur DATE,
    pays_utilisateur TEXT NOT NULL,
    CONSTRAINT PK_Utilisateurs PRIMARY KEY (nom_utilisateur),
    CONSTRAINT FK_pays_Utilisateurs FOREIGN KEY (pays_utilisateur) REFERENCES LesPays (nom_pays)
);

CREATE TABLE LesGenres (
    nom_genre TEXT NOT NULL,
    CONSTRAINT PK_Genres PRIMARY KEY (nom_genre),
    CONSTRAINT CK_nom_Genres CHECK (nom_genre IN (
        'Action', 'Animation', 'Aventure', 'Comedie', 'Documentaire', 'Drame', 'Fantastique',
        'Guerre', 'Horreur', 'Romance', 'Science-Fiction', 'Thriller', 'Western'
    ))
);

CREATE TABLE LesPays (
    nom_pays TEXT NOT NULL,
    CONSTRAINT PK_Pays PRIMARY KEY (nom_pays),
    CONSTRAINT CK_nom_Pays CHECK (nom_pays IN (
        'France', 'Allemagne', 'Royaume-Uni', 'Etats-Unis', 'Espagne', 'Italie', 'Portugal', 'Irlande', 'Pays-Bas',
        'Suisse', 'Canada', 'Luxembourg', 'Belgique', 'Autriche', 'Danemark', 'Norvege', 'Suede', 'Finlande', 'Australie'
    ))
);

CREATE TABLE LesActeurs (
    nom_acteur TEXT NOT NULL,
    prenom_acteur TEXT NOT NULL,
    titre_oeuvre TEXT NOT NULL,
    CONSTRAINT PK_Acteurs PRIMARY KEY (nom_acteur, prenom_acteur, titre_oeuvre),
    CONSTRAINT FK_nom_prenom_Acteurs FOREIGN KEY (nom_acteur, prenom_acteur)
        REFERENCES LesPersonnes (nom_personne, prenom_personne),
    CONSTRAINT FK_titre_Acteurs FOREIGN KEY (titre_oeuvre) REFERENCES LesOeuvres (titre_oeuvre)
);

CREATE TABLE LesRealisateurs (
    nom_realisateur TEXT NOT NULL,
    prenom_realisateur TEXT NOT NULL,
    titre_oeuvre TEXT NOT NULL,
    CONSTRAINT PK_Realisateurs PRIMARY KEY (nom_realisateur, prenom_realisateur, titre_oeuvre),
    CONSTRAINT FK_nom_prenom_Realisateurs FOREIGN KEY (nom_realisateur, prenom_realisateur)
        REFERENCES LesPersonnes (nom_personne, prenom_personne),
    CONSTRAINT FK_titre_Realisateurs FOREIGN KEY (titre_oeuvre) REFERENCES LesOeuvres (titre_oeuvre)
);

CREATE TABLE LesVisionnages (
    nom_utilisateur TEXT NOT NULL,
    titre_oeuvre TEXT NOT NULL,
    CONSTRAINT PK_Visionnages PRIMARY KEY (nom_utilisateur, titre_oeuvre),
    CONSTRAINT FK_nom_Visionnages FOREIGN KEY (nom_utilisateur) REFERENCES LesUtilisateurs (nom_utilisateur),
    CONSTRAINT FK_titre_Visionnages FOREIGN KEY (titre_oeuvre) REFERENCES LesOeuvres (titre_oeuvre)
);

CREATE TABLE LesPreferences (
    nom_utilisateur TEXT NOT NULL,
    nom_genre TEXT NOT NULL,
    CONSTRAINT PK_Preferences PRIMARY KEY (nom_utilisateur, nom_genre),
    CONSTRAINT FK_utilisateur_Preferences FOREIGN KEY (nom_utilisateur) REFERENCES LesUtilisateurs (nom_utilisateur),
    CONSTRAINT FK_genre_Preferences FOREIGN KEY (nom_genre) REFERENCES LesGenres (nom_genre)
);
 
 
 
 
 
 