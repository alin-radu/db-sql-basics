CREATE TABLE employers (
  company_name VARCHAR(250),
  company_address VARCHAR(300),
  yearly_revenue FLOAT(5,2), -- Approximation, Allowed: 123.12, 12.1, Not allowed: 1234.12, 1.123
  is_hiring BOOLEAN
);