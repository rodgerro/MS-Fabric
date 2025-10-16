# Microsoft Fabric Portfolio – Starter Project

This repo showcases a **mini end‑to‑end Microsoft Fabric solution** you can import into a Fabric Workspace 

## What’s inside
```
fabric-portfolio/
├─ data/                         # Sample source data (CSV)
├─ notebooks/                    # PySpark notebook for Lakehouse ETL
├─ dataflows/                    # Power Query (.pq) example to clean sales
├─ pipelines/                    # Example pipeline definition (JSON + readme)
├─ semantic-model/              # Simple TMDL model with a measure
├─ powerbi/                      # Power BI Project (PBIR) placeholders
└─ README.md                     # This guide
```

## Scenario
You will ingest **Orders** and **Customers** CSVs into a **Lakehouse**, transform them with **PySpark**, publish curated tables, and build a **Direct Lake** semantic model (TMDL) with a simple **Total Sales** measure. Optionally orchestrate with a **Fabric pipeline** and/or a **Power Query (dataflow)** variant of the same logic.

## Quick Start (Fabric)
1. **Create a Workspace** in Microsoft Fabric.
2. **Create a Lakehouse** (e.g., `FabricDemoLakehouse`). Upload files in `/data` to *Files*.
3. Open **notebooks/`fabric_etl_demo.ipynb`** in Fabric (or upload it) and **run all**:
   - Reads `/Files/data/*.csv` into DataFrames
   - Cleans and joins to produce a `fact_orders` table
   - Writes results to **Tables** (Delta)
4. In the Lakehouse, open the **SQL analytics endpoint** and verify tables.
5. Build a **semantic model** via **Direct Lake** or import **semantic-model/model.tmdl** (with Tabular Editor 3 or TMDL tooling). Confirm the **[Measures] Total Sales** works.
6. (Optional) Import **powerbi/** as a PBIR project, connect to the Lakehouse semantic model, and build a small report.
7. (Optional) Open **pipelines/** and recreate the pipeline in Fabric’s Data Factory UI (JSON included as a reference). Schedule the pipeline.

## Artifacts
- **PySpark ETL**: `notebooks/fabric_etl_demo.ipynb`
- **Dataflow (Power Query)**: `dataflows/Sales_Cleaning.pq`
- **Pipeline**: `pipelines/lakehouse_ingest_pipeline.json`
- **Semantic Model (TMDL)**: `semantic-model/model.tmdl`
- **Sample Data**: `data/customers.csv`, `data/orders.csv`



---

**Last updated:** 2025-10-16 22:36 UTC
