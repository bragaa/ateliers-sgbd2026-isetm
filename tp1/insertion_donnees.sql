-- TP01 - Donnees d'exemple (contexte tunisien)

INSERT INTO filiere (nom) VALUES
('Genie informatique'),
('Reseaux et telecommunications');

INSERT INTO groupe (code, niveau, id_filiere) VALUES
('INFO-1A', 1, 1),
('INFO-1B', 1, 1),
('RT-1A',   1, 2);

INSERT INTO etudiant (nom, prenom, date_naissance, email, id_groupe) VALUES
('Ben Salah', 'Amira',  '2006-02-14', 'amira.bensalah@etu.tn', 1),
('Trabelsi',  'Youssef','2005-11-03', 'youssef.trabelsi@etu.tn', 1),
('Mansouri',  'Ines',   '2006-06-21', 'ines.mansouri@etu.tn', 2),
('Jlassi',    'Ahmed',  '2005-08-09', 'ahmed.jlassi@etu.tn', 2),
('Gharbi',    'Mariem', '2006-01-27', 'mariem.gharbi@etu.tn', 3),
('Ayari',     'Mehdi',  '2005-12-12', 'mehdi.ayari@etu.tn', 3),
('Khelifi',   'Sarra',  '2006-04-05', 'sarra.khelifi@etu.tn', 1),
('Bouazizi',  'Omar',   '2005-09-18', 'omar.bouazizi@etu.tn', 3);
