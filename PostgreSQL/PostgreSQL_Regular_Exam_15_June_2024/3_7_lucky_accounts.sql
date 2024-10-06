SELECT
    CONCAT(a.id, ' ', username) AS id_username,
    email
FROM
    accounts AS a
JOIN
    accounts_photos AS ap
ON
    ap.account_id = a.id
JOIN
    photos AS p
ON
    p.id = ap.photo_id
WHERE
    a.id = p.id;