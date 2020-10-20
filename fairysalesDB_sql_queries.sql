
-- 1
show create table f_instances; -- Immer checken, was in der Tabelle steht.
DESCRIBE f_instances; -- Hier sieht man, was eingestellt ist.
show full columns from f_instances;

ALTER TABLE f_instances MODIFY COLUMN instanceName varchar(42) NOT NULL;

-- 2
show create table f_files;
select * from f_files;
ALTER TABLE f_files MODIFY COLUMN storageName varchar(42) NOT NULL;

-- 3
select * FROM f_entries
WHERE headline="Casestudy1";

-- Immer dort schauen, wo der Fremdschlüssel ist: REFERENCES `f_entries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE --> sollte auch den Fremdschlüssel löschen, also ok
SHOW CREATE TABLE f_fileusage;

SELECT * FROM f_fileusage
WHERE entryID=33;

DELETE FROM f_entries WHERE headline="Casestudy1";

-- Gegenprobe:
SELECT * FROM f_fileusage
WHERE entryID=33;

-- 4
SELECT * FROM f_log
WHERE scope="file deletion";

-- 5
SELECT * FROM f_files;
ALTER TABLE f_files DROP COLUMN numOfPics;

-- 6
SELECT * FROM f_users;
SELECT * FROM f_files;

-- Wir fügen einen Fremdschlüssel ein.
ALTER TABLE f_files ADD FOREIGN KEY (uploadedBy) REFERENCES f_users(id) ON DELETE CASCADE ON UPDATE CASCADE;
SHOW CREATE TABLE f_files;

ALTER TABLE f_files DROP FOREIGN KEY f_files_ibfk_1; -- > Bei Fehlern im Fremdschlüssel einfach löschen und neu erstellen.

-- 7
SELECT * FROM f_users;
SELECT * FROM f_instance_permissions;
SELECT * FROM f_instances;

SELECT username, CONCAT(prename, ' ', surname) AS 'Name',f_instances.instanceName from f_users
JOIN f_instance_permissions ON f_users.id = f_instance_permissions.userID
JOIN f_instances ON f_instance_permissions.instanceID = f_instances.id
WHERE instanceName ='World #2';

-- 8 Generieren Sie eine Liste, auf der ersichtlich ist, welche Datei auf welcher Instanz liegt. Zeigen Sie dabei nur den StorageName sowie den Instanznamen an.
SELECT * FROM f_files; -- id
SELECT * FROM f_fileusage; -- fileID
SELECT * FROM f_entries; -- instanceID
SELECT * FROM f_instances; -- instanceName

SELECT f_files.originalName, f_instances.instanceName
FROM f_files
JOIN f_fileusage ON f_files.id = f_fileusage.fileID
JOIN f_entries on f_fileusage.entryID = f_entries.id
JOIN f_instances ON f_entries.instanceID = f_instances.id;

-- 9 In der Log-Tabelle befinden sich ca. 9000 Einträge. Finden Sie heraus, wie viele unterschiedlichen Nachrichten (message) es im Log gibt.
SELECT * FROM f_log;
SELECT COUNT(DISTINCT message) FROM f_log;

-- 10 Stellen Sie für das System ein, dass Benutzer maximal 3 Versuche haben, sich einzuloggen.
SELECT * FROM f_log;
SELECT * FROM f_users;

SELECT username, COUNT(*)
FROM f_log
JOIN f_users ON f_log.userID = f_users.id
GROUP BY message LIKE('%false%') HAVING COUNT(*) > 3;



