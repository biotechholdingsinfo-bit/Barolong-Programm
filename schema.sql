CREATE DATABASE IF NOT EXISTS barolong_nation;
USE barolong_nation;

CREATE TABLE institutions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    purpose TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO institutions (name, purpose) VALUES 
('Royal House of Barolong', 'Custodian of Barolong identity, customary authority, unity, heritage and long-term vision[cite: 1].'),
('Barolong Governance Council', 'Policy, customary governance and accountability institution[cite: 1].'),
('Barolong National Development Trust', 'Long-term holding and protection of collective wealth for the benefit of the Barolong community[cite: 1].'),
('Barolong Holdings', 'The commercial engine operating on professional commercial principles[cite: 1].'),
('Barolong Development Agency', 'Implementation arm for social and economic transformation[cite: 1].');

CREATE TABLE land_register (
    id INT AUTO_INCREMENT PRIMARY KEY,
    parcel_number VARCHAR(100) UNIQUE NOT NULL,
    gps_coordinates VARCHAR(100),
    province VARCHAR(100),
    municipality VARCHAR(100),
    farm_erf_number VARCHAR(100),
    title_deed_number VARCHAR(100),
    classification VARCHAR(100),
    estimated_value DECIMAL(15, 2),
    legal_status VARCHAR(100)
);

INSERT INTO land_register (parcel_number, province, municipality, classification, estimated_value, legal_status) VALUES 
('BR-NW-001', 'North West', 'Ratlou Local Municipality', 'Agricultural Land', 15000000.00, 'Community-owned'),
('BR-FS-002', 'Free State', 'Mantsopa Local Municipality', 'Commercial Property', 8500000.00, 'Trust-owned'),
('BR-NC-003', 'Northern Cape', 'Ga-Segonyana Local Municipality', 'Renewable Energy Land', 12000000.00, 'Development opportunity');

CREATE TABLE asset_register (
    id INT AUTO_INCREMENT PRIMARY KEY,
    asset_name VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    current_value DECIMAL(15, 2),
    status VARCHAR(100)
);

INSERT INTO asset_register (asset_name, category, current_value, status) VALUES 
('Barolong Agricultural Pilot', 'Agriculture', 5000000.00, 'Active'),
('Barolong Property Development Portfolio', 'Property', 25000000.00, 'Planning');
