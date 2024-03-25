ALTER TABLE musician RENAME TO singer;

ALTER TABLE singer DROP COLUMN role;
ALTER TABLE singer DROP COLUMN bandName;

ALTER TABLE singer RENAME COLUMN musicianName TO singerName;

DROP TABLE band;
