-- a
SELECT * FROM taxonomy WHERE species LIKE 'Panthera%';
SELECT ncbi_id FROM taxonomy WHERE species = 'Panthera tigris sumatrae (Sumatran tiger)';

-- b
SELECT
TABLE_NAME AS 'Table Name',
COLUMN_NAME AS 'Column Name',
CONSTRAINT_NAME AS 'Constraint Name',
REFERENCED_TABLE_NAME AS 'Referenced Table',
REFERENCED_COLUMN_NAME AS 'Referenced Column'
FROM
INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE CONSTRAINT_NAME LIKE 'fk%' OR REFERENCED_TABLE_NAME <> NULL AND REFERENCED_COLUMN_NAME <> NULL;

-- c
SELECT 
r.ncbi_id ,
t.species ,
r.length ,
r.description 
FROM rfamseq r 
JOIN taxonomy t
ON r.ncbi_id = t.ncbi_id
ORDER BY r.length DESC
LIMIT 1;

-- d
SELECT rfam_acc, rfam_id, MAX(num_genome_seq) AS max_sequence_length
FROM family
WHERE num_genome_seq > 1000000
GROUP BY rfam_acc, rfam_id
ORDER BY max_sequence_length DESC
LIMIT 15 OFFSET 120; 

-- Notes:-
-- Query a, b, c are working as expected. Query d is returning an empty set, as I couldn't figure out the necessary columns. But if the -- columns were specified, then the query would look like the one mentioned in "--d ", considering "family" table doesn't require a join operation.


