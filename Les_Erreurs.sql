-- Jeux de données ERREURS

-- Erreur : Nom vide
INSERT INTO LesPersonnes VALUES (NULL, 'Robert', '1943-08-17', 'Etats-Unis');
-- Erreur : Prenom vide
INSERT INTO LesPersonnes VALUES ('De Niro', NULL, '1943-08-17', 'Etats-Unis');
-- Erreur : Pays vide
INSERT INTO LesPersonnes VALUES ('De Niro', 'Robert', '1943-08-17', NULL);
-- Erreur : Personne existante
INSERT INTO LesPersonnes VALUES ('Tarantino', 'Quentin', '1963-03-27', 'Etats-Unis');
-- Erreur : Pays non existant
INSERT INTO LesPersonnes VALUES ('Luna', 'Diego', '1979-12-29', 'Mexique');

-- Erreur : Titre vide
INSERT INTO LesOeuvres VALUES (NULL, 'film', 100, NULL, '2011-10-05', 'Action');
-- Erreur : Type vide
INSERT INTO LesOeuvres VALUES ('Drive', NULL, 100, NULL, '2011-10-05', 'Action');
-- Erreur : Date de sortie vide
INSERT INTO LesOeuvres VALUES ('Drive', 'film', 100, NULL, NULL, 'Action');
-- Erreur : Genre vide
INSERT INTO LesOeuvres VALUES ('Drive', 'film', 100, NULL, '2011-10-05', NULL);
-- Erreur : Oeuvre existante
INSERT INTO LesOeuvres VALUES ('Pulp Fiction', 'film', 149, NULL, '1994-10-26', 'Thriller');
-- Erreur : Film sans durée
INSERT INTO LesOeuvres VALUES ('Drive', 'film', NULL, NULL, '2011-10-05', 'Action');
-- Erreur : Film avec nombre de saisons
INSERT INTO LesOeuvres VALUES ('Drive', 'film', 100, 1, '2011-10-05', 'Action');
-- Erreur : Série avec durée
INSERT INTO LesOeuvres VALUES ('Narcos', 'serie', 80, 3, '2015-08-28', 'Drame');
-- Erreur : Série sans nombre de saisons
INSERT INTO LesOeuvres VALUES ('Narcos', 'serie', NULL, NULL, '2015-08-28', 'Drame');
-- Erreur : Genre non existant
INSERT INTO LesOeuvres VALUES ('Narcos', 'serie', NULL, 3, '2015-08-28', 'Biopic');

-- Erreur : Nom vide
INSERT INTO LesUtilisateurs VALUES (NULL, 'aaa@gmail.com', '2000-01-01', 'Espagne');
-- Erreur : Adresse mail vide
INSERT INTO LesUtilisateurs VALUES ('aaa', NULL, '2000-01-01', 'Espagne');
-- Erreur : Pays vide
INSERT INTO LesUtilisateurs VALUES ('aaa', 'aaa@gmail.com', '2000-01-01', NULL);
-- Erreur : Utilisateur existant
INSERT INTO LesUtilisateurs VALUES ('LIAtHeIN', 'liathein@gmail.com', '1999-03-22', 'France');
-- Erreur : Pays non existant
INSERT INTO LesUtilisateurs VALUES ('aaa', 'aaa@gmail.com', '2000-01-01', 'Bresil');

-- Erreur : Genre vide
INSERT INTO LesGenres VALUES (NULL);
-- Erreur : Genre existant
INSERT INTO LesGenres VALUES ('Action');
-- Erreur : Genre non prévu
INSERT INTO LesGenres VALUES ('Policier');

-- Erreur : Pays vide
INSERT INTO LesPays VALUES (NULL);
-- Erreur : Pays existant
INSERT INTO LesPays VALUES ('France');
-- Erreur : Pays non prévu
INSERT INTO LesPays VALUES ('Chine');

-- Erreur : Nom vide
INSERT INTO LesActeurs VALUES (NULL, 'John', 'Pulp Fiction');
-- Erreur : Prénom vide
INSERT INTO LesActeurs VALUES ('Travolta', NULL, 'Pulp Fiction');
-- Erreur : Titre vide
INSERT INTO LesActeurs VALUES ('Travolta', 'John', NULL);
-- Erreur : Acteur existant pour cette oeuvre
INSERT INTO LesActeurs VALUES ('Travolta', 'John', 'Pulp Fiction');
-- Erreur : Personne non existante
INSERT INTO LesActeurs VALUES ('De Niro', 'Robert', 'Pulp Fiction');
-- Erreur : Oeuvre non existante
INSERT INTO LesActeurs VALUES ('Travolta', 'John', 'The Punisher');

-- Erreur : Nom vide
INSERT INTO LesRealisateurs VALUES (NULL, 'Quentin', 'Pulp Fiction');
-- Erreur : Prénom vide
INSERT INTO LesRealisateurs VALUES ('Tarantino', NULL, 'Pulp Fiction');
-- Erreur : Titre vide
INSERT INTO LesRealisateurs VALUES ('Tarantino', 'Quentin', NULL);
-- Erreur : Réalisateur existant pour cette oeuvre
INSERT INTO LesRealisateurs VALUES ('Tarantino', 'Quentin', 'Pulp Fiction');
-- Erreur : Personne non existante
INSERT INTO LesRealisateurs VALUES ('Spielberg', 'Steven', 'Pulp Fiction');
-- Erreur : Oeuvre non existante
INSERT INTO LesRealisateurs VALUES ('Tarantino', 'Quentin', 'Kill Bill');

-- Erreur : Nom vide
INSERT INTO LesVisionnages VALUES (NULL, 'Django Unchained');
-- Erreur : Titre vide
INSERT INTO LesVisionnages VALUES ('LIAtHeIN', NULL);
-- Erreur : Visionnage existant pour cet utilisateur et cette oeuvre
INSERT INTO LesVisionnages VALUES ('LIAtHeIN', 'Django Unchained');
-- Erreur : Utilisateur non existant
INSERT INTO LesVisionnages VALUES ('bbb', 'Django Unchained');
-- Erreur : Oeuvre non existante
INSERT INTO LesVisionnages VALUES ('LIAtHeIN', 'Kill Bill');

-- Erreur : Nom vide
INSERT INTO LesPreferences VALUES (NULL, 'Science-Fiction');
-- Erreur : Titre vide
INSERT INTO LesPreferences VALUES ('Nordonte', NULL);
-- Erreur : Préférence existante pour cet utilisateur et ce genre
INSERT INTO LesPreferences VALUES ('Nordonte', 'Science-Fiction');
-- Erreur : Utilisateur non existant
INSERT INTO LesPreferences VALUES ('bbb', 'Science-Fiction');
-- Erreur : Genre non existant
INSERT INTO LesPreferences VALUES ('bbb', 'Biopic');
