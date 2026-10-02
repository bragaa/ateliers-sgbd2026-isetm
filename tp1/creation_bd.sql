-- TP01 - Creation de la base et de son schema
-- A executer dans pgAdmin (Query Tool) apres avoir cree/selectionne la base gestion_etudiants.

DROP TABLE IF EXISTS etudiant CASCADE;
DROP TABLE IF EXISTS groupe CASCADE;
DROP TABLE IF EXISTS filiere CASCADE;

CREATE TABLE filiere (
    id_filiere SERIAL PRIMARY KEY,
    nom VARCHAR(80) NOT NULL UNIQUE
);

CREATE TABLE groupe (
    id_groupe SERIAL PRIMARY KEY,
    code VARCHAR(20) NOT NULL UNIQUE,
    niveau INTEGER NOT NULL CHECK (niveau BETWEEN 1 AND 5),
    id_filiere INTEGER NOT NULL,
    CONSTRAINT fk_groupe_filiere
        FOREIGN KEY (id_filiere) REFERENCES filiere(id_filiere)
);

CREATE TABLE etudiant (
    id_etudiant SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    date_naissance DATE,
    email VARCHAR(120) UNIQUE,
    id_groupe INTEGER NOT NULL,
    CONSTRAINT fk_etudiant_groupe
        FOREIGN KEY (id_groupe) REFERENCES groupe(id_groupe)
);
