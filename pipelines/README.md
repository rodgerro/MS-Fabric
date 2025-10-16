# Pipeline: lakehouse_ingest_pipeline

This JSON illustrates a simple Fabric/Data Factory pipeline with three activities:

1. **CopyCustomers** – copies `customers.csv` into a Lakehouse staging table `stg_customers`  
2. **CopyOrders** – copies `orders.csv` into a Lakehouse staging table `stg_orders`  
3. **RunNotebook** – executes `notebooks/fabric_etl_demo.ipynb` to curate and publish `fact_orders`

> Recreate these activities in Fabric’s **Data Factory** UI. The JSON is a reference structure for your portfolio.
