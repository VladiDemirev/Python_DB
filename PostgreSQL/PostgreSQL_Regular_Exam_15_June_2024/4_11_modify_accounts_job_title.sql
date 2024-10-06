CREATE OR REPLACE PROCEDURE udp_modify_account(address_street VARCHAR(30), address_town VARCHAR(30))
AS
$$
DECLARE
    account_id_num INT;
BEGIN
    account_id_num := (
        SELECT
            account_id
        FROM
            addresses
        WHERE
            street = address_street
                            AND
            town = address_town
            );
    IF 
        account_id_num IS NULL 
    THEN RETURN;
    ELSE
        UPDATE
            accounts
        SET
            job_title = '(Remote) ' || job_title
        WHERE
            account_id_num = id;
    END IF;
END;
$$
LANGUAGE plpgsql;