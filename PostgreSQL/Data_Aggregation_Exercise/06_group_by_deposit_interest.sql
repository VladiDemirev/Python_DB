SELECT
  deposit_group,
  SUM(deposit_interest) AS deposit_interest
FROM
  wizard_deposits
GROUP by
  deposit_group
ORDER by
  deposit_interest DESC;