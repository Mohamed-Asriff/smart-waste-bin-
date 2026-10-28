-- ============================================================
-- Smart Waste Bin Management System - Sample Data
-- Database: PostgreSQL (smartwaste)
-- ============================================================
-- Run this AFTER schema.sql
-- ============================================================

-- ============================================================
-- Sample Bins (Kalmunai Municipal Council Area)
-- ============================================================
INSERT INTO bins (id, name, latitude, longitude, zone, bin_height_cm, status, created_at, updated_at) VALUES
    ('BIN-001', 'Kalmunai Bus Stand Bin',         7.4130, 81.8200, 'Town Center',   40.0, 'ACTIVE', NOW(), NOW()),
    ('BIN-002', 'Main Street Market Bin',         7.4155, 81.8215, 'Town Center',   40.0, 'ACTIVE', NOW(), NOW()),
    ('BIN-003', 'Kalmunai Beach Road Bin',        7.4170, 81.8310, 'Beach Side',    40.0, 'ACTIVE', NOW(), NOW()),
    ('BIN-004', 'District Hospital Bin',          7.4195, 81.8185, 'Hospital Area', 40.0, 'ACTIVE', NOW(), NOW()),
    ('BIN-005', 'Municipal Council Office Bin',   7.4165, 81.8195, 'Town Center',   40.0, 'ACTIVE', NOW(), NOW()),
    ('BIN-006', 'Kalmunai Mosque Road Bin',       7.4145, 81.8230, 'Mosque Area',   40.0, 'ACTIVE', NOW(), NOW()),
    ('BIN-007', 'Central College Junction Bin',   7.4110, 81.8175, 'School Zone',   40.0, 'ACTIVE', NOW(), NOW()),
    ('BIN-008', 'Fish Market Bin',                7.4200, 81.8295, 'Beach Side',    40.0, 'ACTIVE', NOW(), NOW()),
    ('BIN-009', 'Kalmunai Railway Station Bin',   7.4085, 81.8160, 'Station Area',  40.0, 'ACTIVE', NOW(), NOW()),
    ('BIN-010', 'Periyaneelavanai Junction Bin',  7.4250, 81.8210, 'North Zone',    40.0, 'ACTIVE', NOW(), NOW())
ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- Sample Readings (Simulated sensor data over last 24 hours)
-- ============================================================

-- BIN-001: Kalmunai Bus Stand Bin (moderate fill ~45%)
INSERT INTO readings (bin_id, fill_percentage, distance_cm, status, timestamp) VALUES
    ('BIN-001', 10.0, 36.0, 'ACTIVE', NOW() - INTERVAL '24 hours'),
    ('BIN-001', 15.0, 34.0, 'ACTIVE', NOW() - INTERVAL '22 hours'),
    ('BIN-001', 22.0, 31.2, 'ACTIVE', NOW() - INTERVAL '20 hours'),
    ('BIN-001', 28.0, 28.8, 'ACTIVE', NOW() - INTERVAL '18 hours'),
    ('BIN-001', 30.0, 28.0, 'ACTIVE', NOW() - INTERVAL '16 hours'),
    ('BIN-001', 33.0, 26.8, 'ACTIVE', NOW() - INTERVAL '14 hours'),
    ('BIN-001', 35.0, 26.0, 'ACTIVE', NOW() - INTERVAL '12 hours'),
    ('BIN-001', 38.0, 24.8, 'ACTIVE', NOW() - INTERVAL '10 hours'),
    ('BIN-001', 40.0, 24.0, 'ACTIVE', NOW() - INTERVAL '8 hours'),
    ('BIN-001', 42.0, 23.2, 'ACTIVE', NOW() - INTERVAL '6 hours'),
    ('BIN-001', 43.0, 22.8, 'ACTIVE', NOW() - INTERVAL '4 hours'),
    ('BIN-001', 44.0, 22.4, 'ACTIVE', NOW() - INTERVAL '2 hours'),
    ('BIN-001', 45.0, 22.0, 'ACTIVE', NOW());

-- BIN-002: Main Street Market Bin (high fill ~88%)
INSERT INTO readings (bin_id, fill_percentage, distance_cm, status, timestamp) VALUES
    ('BIN-002', 30.0, 28.0, 'ACTIVE', NOW() - INTERVAL '24 hours'),
    ('BIN-002', 40.0, 24.0, 'ACTIVE', NOW() - INTERVAL '20 hours'),
    ('BIN-002', 52.0, 19.2, 'ACTIVE', NOW() - INTERVAL '16 hours'),
    ('BIN-002', 60.0, 16.0, 'ACTIVE', NOW() - INTERVAL '12 hours'),
    ('BIN-002', 70.0, 12.0, 'ACTIVE', NOW() - INTERVAL '8 hours'),
    ('BIN-002', 80.0,  8.0, 'ACTIVE', NOW() - INTERVAL '4 hours'),
    ('BIN-002', 85.0,  6.0, 'ACTIVE', NOW() - INTERVAL '2 hours'),
    ('BIN-002', 88.0,  4.8, 'ACTIVE', NOW());

-- BIN-003: Kalmunai Beach Road Bin (medium-high ~65%)
INSERT INTO readings (bin_id, fill_percentage, distance_cm, status, timestamp) VALUES
    ('BIN-003', 20.0, 32.0, 'ACTIVE', NOW() - INTERVAL '24 hours'),
    ('BIN-003', 30.0, 28.0, 'ACTIVE', NOW() - INTERVAL '20 hours'),
    ('BIN-003', 40.0, 24.0, 'ACTIVE', NOW() - INTERVAL '16 hours'),
    ('BIN-003', 48.0, 20.8, 'ACTIVE', NOW() - INTERVAL '12 hours'),
    ('BIN-003', 55.0, 18.0, 'ACTIVE', NOW() - INTERVAL '8 hours'),
    ('BIN-003', 60.0, 16.0, 'ACTIVE', NOW() - INTERVAL '4 hours'),
    ('BIN-003', 63.0, 14.8, 'ACTIVE', NOW() - INTERVAL '2 hours'),
    ('BIN-003', 65.0, 14.0, 'ACTIVE', NOW());

-- BIN-004: District Hospital Bin (low fill ~32%)
INSERT INTO readings (bin_id, fill_percentage, distance_cm, status, timestamp) VALUES
    ('BIN-004',  5.0, 38.0, 'ACTIVE', NOW() - INTERVAL '24 hours'),
    ('BIN-004', 10.0, 36.0, 'ACTIVE', NOW() - INTERVAL '20 hours'),
    ('BIN-004', 15.0, 34.0, 'ACTIVE', NOW() - INTERVAL '16 hours'),
    ('BIN-004', 20.0, 32.0, 'ACTIVE', NOW() - INTERVAL '12 hours'),
    ('BIN-004', 25.0, 30.0, 'ACTIVE', NOW() - INTERVAL '8 hours'),
    ('BIN-004', 28.0, 28.8, 'ACTIVE', NOW() - INTERVAL '4 hours'),
    ('BIN-004', 30.0, 28.0, 'ACTIVE', NOW() - INTERVAL '2 hours'),
    ('BIN-004', 32.0, 27.2, 'ACTIVE', NOW());

-- BIN-005: Municipal Council Office Bin (critical fill ~91%)
INSERT INTO readings (bin_id, fill_percentage, distance_cm, status, timestamp) VALUES
    ('BIN-005', 45.0, 22.0, 'ACTIVE', NOW() - INTERVAL '24 hours'),
    ('BIN-005', 55.0, 18.0, 'ACTIVE', NOW() - INTERVAL '20 hours'),
    ('BIN-005', 65.0, 14.0, 'ACTIVE', NOW() - INTERVAL '16 hours'),
    ('BIN-005', 72.0, 11.2, 'ACTIVE', NOW() - INTERVAL '12 hours'),
    ('BIN-005', 78.0,  8.8, 'ACTIVE', NOW() - INTERVAL '8 hours'),
    ('BIN-005', 84.0,  6.4, 'ACTIVE', NOW() - INTERVAL '4 hours'),
    ('BIN-005', 88.0,  4.8, 'ACTIVE', NOW() - INTERVAL '2 hours'),
    ('BIN-005', 91.0,  3.6, 'ACTIVE', NOW());

-- BIN-006: Kalmunai Mosque Road Bin (moderate ~57%)
INSERT INTO readings (bin_id, fill_percentage, distance_cm, status, timestamp) VALUES
    ('BIN-006', 15.0, 34.0, 'ACTIVE', NOW() - INTERVAL '24 hours'),
    ('BIN-006', 25.0, 30.0, 'ACTIVE', NOW() - INTERVAL '20 hours'),
    ('BIN-006', 35.0, 26.0, 'ACTIVE', NOW() - INTERVAL '16 hours'),
    ('BIN-006', 42.0, 23.2, 'ACTIVE', NOW() - INTERVAL '12 hours'),
    ('BIN-006', 48.0, 20.8, 'ACTIVE', NOW() - INTERVAL '8 hours'),
    ('BIN-006', 52.0, 19.2, 'ACTIVE', NOW() - INTERVAL '4 hours'),
    ('BIN-006', 55.0, 18.0, 'ACTIVE', NOW() - INTERVAL '2 hours'),
    ('BIN-006', 57.0, 17.2, 'ACTIVE', NOW());

-- BIN-007: Central College Junction Bin (medium-high ~73%)
INSERT INTO readings (bin_id, fill_percentage, distance_cm, status, timestamp) VALUES
    ('BIN-007', 25.0, 30.0, 'ACTIVE', NOW() - INTERVAL '24 hours'),
    ('BIN-007', 35.0, 26.0, 'ACTIVE', NOW() - INTERVAL '20 hours'),
    ('BIN-007', 45.0, 22.0, 'ACTIVE', NOW() - INTERVAL '16 hours'),
    ('BIN-007', 55.0, 18.0, 'ACTIVE', NOW() - INTERVAL '12 hours'),
    ('BIN-007', 62.0, 15.2, 'ACTIVE', NOW() - INTERVAL '8 hours'),
    ('BIN-007', 68.0, 12.8, 'ACTIVE', NOW() - INTERVAL '4 hours'),
    ('BIN-007', 71.0, 11.6, 'ACTIVE', NOW() - INTERVAL '2 hours'),
    ('BIN-007', 73.0, 10.8, 'ACTIVE', NOW());

-- BIN-008: Fish Market Bin (low fill ~15%)
INSERT INTO readings (bin_id, fill_percentage, distance_cm, status, timestamp) VALUES
    ('BIN-008',  2.0, 39.2, 'ACTIVE', NOW() - INTERVAL '24 hours'),
    ('BIN-008',  5.0, 38.0, 'ACTIVE', NOW() - INTERVAL '20 hours'),
    ('BIN-008',  8.0, 36.8, 'ACTIVE', NOW() - INTERVAL '16 hours'),
    ('BIN-008', 10.0, 36.0, 'ACTIVE', NOW() - INTERVAL '12 hours'),
    ('BIN-008', 12.0, 35.2, 'ACTIVE', NOW() - INTERVAL '8 hours'),
    ('BIN-008', 13.0, 34.8, 'ACTIVE', NOW() - INTERVAL '4 hours'),
    ('BIN-008', 14.0, 34.4, 'ACTIVE', NOW() - INTERVAL '2 hours'),
    ('BIN-008', 15.0, 34.0, 'ACTIVE', NOW());

-- BIN-009: Kalmunai Railway Station Bin (high fill ~82%)
INSERT INTO readings (bin_id, fill_percentage, distance_cm, status, timestamp) VALUES
    ('BIN-009', 35.0, 26.0, 'ACTIVE', NOW() - INTERVAL '24 hours'),
    ('BIN-009', 45.0, 22.0, 'ACTIVE', NOW() - INTERVAL '20 hours'),
    ('BIN-009', 55.0, 18.0, 'ACTIVE', NOW() - INTERVAL '16 hours'),
    ('BIN-009', 62.0, 15.2, 'ACTIVE', NOW() - INTERVAL '12 hours'),
    ('BIN-009', 70.0, 12.0, 'ACTIVE', NOW() - INTERVAL '8 hours'),
    ('BIN-009', 75.0, 10.0, 'ACTIVE', NOW() - INTERVAL '4 hours'),
    ('BIN-009', 79.0,  8.4, 'ACTIVE', NOW() - INTERVAL '2 hours'),
    ('BIN-009', 82.0,  7.2, 'ACTIVE', NOW());

-- BIN-010: Periyaneelavanai Junction Bin (moderate ~44%)
INSERT INTO readings (bin_id, fill_percentage, distance_cm, status, timestamp) VALUES
    ('BIN-010', 10.0, 36.0, 'ACTIVE', NOW() - INTERVAL '24 hours'),
    ('BIN-010', 18.0, 32.8, 'ACTIVE', NOW() - INTERVAL '20 hours'),
    ('BIN-010', 24.0, 30.4, 'ACTIVE', NOW() - INTERVAL '16 hours'),
    ('BIN-010', 30.0, 28.0, 'ACTIVE', NOW() - INTERVAL '12 hours'),
    ('BIN-010', 35.0, 26.0, 'ACTIVE', NOW() - INTERVAL '8 hours'),
    ('BIN-010', 39.0, 24.4, 'ACTIVE', NOW() - INTERVAL '4 hours'),
    ('BIN-010', 42.0, 23.2, 'ACTIVE', NOW() - INTERVAL '2 hours'),
    ('BIN-010', 44.0, 22.4, 'ACTIVE', NOW());
