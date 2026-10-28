-- ============================================================
-- Smart Waste Bin Management System - Database Schema
-- Database: PostgreSQL
-- Database Name: smartwaste
-- ============================================================

-- Create database (run this separately if database doesn't exist)
-- CREATE DATABASE smartwaste;

-- Connect to the database
-- \c smartwaste;

-- ============================================================
-- Table: bins
-- Stores registered waste bin information and location
-- ============================================================
CREATE TABLE IF NOT EXISTS bins (
    id              VARCHAR(255)     PRIMARY KEY,
    name            VARCHAR(255)     NOT NULL,
    latitude        DOUBLE PRECISION,
    longitude       DOUBLE PRECISION,
    zone            VARCHAR(255),
    bin_height_cm   DOUBLE PRECISION DEFAULT 40.0,
    status          VARCHAR(255)     DEFAULT 'ACTIVE',
    created_at      TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP        DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================
-- Table: readings
-- Stores sensor readings received from IoT waste bins
-- ============================================================
CREATE TABLE IF NOT EXISTS readings (
    id              BIGSERIAL        PRIMARY KEY,
    bin_id          VARCHAR(255)     NOT NULL,
    fill_percentage DOUBLE PRECISION,
    distance_cm     DOUBLE PRECISION,
    status          VARCHAR(255),
    timestamp       TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_readings_bin
        FOREIGN KEY (bin_id) REFERENCES bins(id)
        ON DELETE CASCADE
);

-- ============================================================
-- Indexes for performance
-- ============================================================
CREATE INDEX IF NOT EXISTS idx_bin_id    ON readings (bin_id);
CREATE INDEX IF NOT EXISTS idx_timestamp ON readings (timestamp);
CREATE INDEX IF NOT EXISTS idx_bin_status ON bins (status);
CREATE INDEX IF NOT EXISTS idx_bin_zone   ON bins (zone);
