CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    password NOT NULL,
    city TEXT,
    dog_name TEXT,
    breed TEXT,
    start_weight INTEGER,
    end_weight INTEGER,
    home_date TIMESTAMP,
    product_complete BOOLEAN,
    food_complete BOOLEAN,
    vet_complete BOOLEAN,
    trainer_complete BOOLEAN,
    prephome_complete BOOLEAN,
    pickup_complete BOOLEAN,
    tricks_complete BOOLEAN,
    feeding_complete BOOLEAN,
    housetrain_complete BOOLEAN

)