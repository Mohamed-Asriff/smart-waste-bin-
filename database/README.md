# Smart Waste Bin Database Setup

This directory contains the database setup files for the PostgreSQL database used by the Smart Waste Bin Management system.

## Configuration Details
Matches the settings in `backend/src/main/resources/application.properties`:
- **Database Engine**: PostgreSQL
- **Host**: `localhost`
- **Port**: `5432`
- **Database Name**: `smartwaste`
- **Default Username**: `postgres`
- **Default Password**: `0987654321`

---

## Files

1. **`schema.sql`**:
   - Defines the `bins` table (bin metadata, location coordinates, bin height, and status).
   - Defines the `readings` table (sensor history: fill percentage, ultrasonic distance in cm, timestamp, and status).
   - Sets up table indexes and cascade foreign key constraints.

2. **`data.sql`**:
   - Inserts 10 pre-configured bins located across the Kalmunai Municipal Council region (`BIN-001` through `BIN-010`).
   - Inserts 24-hour historical sensor reading data simulating real-time fill progression.

---

## How to Run

### Option 1: Using psql CLI

```bash
# 1. Connect to PostgreSQL and create the database if it doesn't already exist:
psql -U postgres -c "CREATE DATABASE smartwaste;"

# 2. Run the schema:
psql -U postgres -d smartwaste -f schema.sql

# 3. Load the sample data:
psql -U postgres -d smartwaste -f data.sql
```

### Option 2: Using pgAdmin or DBeaver
1. Connect to your PostgreSQL server.
2. Create a new database named `smartwaste`.
3. Open a Query Tool / SQL Editor on `smartwaste`.
4. Open and execute `schema.sql`.
5. Open and execute `data.sql`.
