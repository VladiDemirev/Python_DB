CREATE OR REPLACE FUNCTION fn_creator_with_board_games(creator_first_name VARCHAR (30))
RETURNS INT
AS
$$
BEGIN
  RETURN
    (SELECT
      COUNT(*)
    FROM
      creators AS cr
    JOIN
      creators_board_games AS cbg
    ON
      cbg.creator_id = cr.id
    WHERE
      cr.first_name = creator_first_name);
END;
$$
LANGUAGE plpgsql;