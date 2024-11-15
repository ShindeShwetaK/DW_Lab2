WITH stock_data AS (
    SELECT
        *
    FROM dev.stock.stock_price_analysis
)

-- Now you can query the CTE
SELECT * FROM stock_data