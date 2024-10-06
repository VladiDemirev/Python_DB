CREATE OR REPLACE FUNCTION fn_calculate_future_value (
  initial_sum INT,
  yearly_interest_rate NUMERIC,
  number_of_years INT
) RETURNS NUMERIC
LANGUAGE plpgsql
AS
$$
DECLARE
  future_value NUMERIC;
BEGIN
  future_value := initial_sum * POWER((1 + yearly_interest_rate), number_of_years);
  RETURN TRUNC(future_value, 4);
END;
$$;