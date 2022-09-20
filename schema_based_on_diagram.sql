CREATE table patients (
 id INT PRIMARY KEY not null,
 name varchar(20),
 date_of_birth date
)


CREATE table medical_histories (
 medical_histories_id PRIMARY KEY not null,
 admitted_at TIMESTAMP,
 patient_id  INT REFERENCES patients(patient_id),
 treatments_id  INT REFERENCES treatments(treatments_id),
 status varchar(50)
)


CREATE table treatments (
 treatments_id INT PRIMARY KEY not null,
 type  varchar(50),
 name varchar(50)
)

CREATE table invoice_items(
 invoice_items_id INT PRIMARY KEY not null,
 unit_price  decimal,
 quantity INT,
 total_price decimal,
 treatments_id INT REFERENCES treatments(treatments_id),
  invoice_id INT REFERENCES invoice(invoice_id)
)


CREATE table invoice(
 invoice_id INT PRIMARY KEY not null,
 total_amount  decimal,
 generated_at TIMESTAMP,
 payed_at TIMESTAMP,
 medical_histories_id INT REFERENCES medical_histories(medical_histories_id)
)

