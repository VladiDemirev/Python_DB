DELETE FROM
  board_games
WHERE
  publisher_id IN (SELECT id FROM publishers WHERE address_id = (SELECT id FROM addresses WHERE town LIKE 'L%'));
 
DELETE FROM
  publishers
WHERE
  address_id IN (SELECT id FROM addresses WHERE town LIKE 'L%');
 
DELETE FROM
  addresses
WHERE
  id IN (SELECT id FROM addresses WHERE town LIKE 'L%');