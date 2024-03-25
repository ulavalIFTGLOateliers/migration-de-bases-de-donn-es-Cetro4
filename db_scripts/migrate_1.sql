CREATE TABLE band (
    bandName varchar(50) PRIMARY KEY,
    creation YEAR,
    genre varchar(50)
);

INSERT INTO band (bandName, creation, genre)
VALUES
    ('Crazy Duo', 2015, 'rock'),
    ('Luna', 2009, 'classical'),
    ('Mysterio', 2019, 'pop');

ALTER TABLE singer RENAME TO musician;

ALTER TABLE musician RENAME COLUMN singerName TO musicianName;

ALTER TABLE musician ADD COLUMN role varchar(50), ADD COLUMN bandName varchar(50);

UPDATE musician
SET role = CASE
            WHEN musicianName = 'Alina' THEN 'vocals'
            WHEN musicianName = 'Mysterio' THEN 'guitar'
            WHEN musicianName = 'Rainbow' THEN 'percussion'
            WHEN musicianName = 'Luna' THEN 'piano'
          END,
    bandName = CASE
                 WHEN musicianName = 'Alina' THEN 'Crazy Duo'
                 WHEN musicianName = 'Mysterio' THEN 'Mysterio'
                 WHEN musicianName = 'Rainbow' THEN 'Crazy Duo'
                 WHEN musicianName = 'Luna' THEN 'Luna'
               END
WHERE
    (musicianName = 'Alina') OR
    (musicianName = 'Mysterio') OR
    (musicianName = 'Rainbow') OR
    (musicianName = 'Luna');