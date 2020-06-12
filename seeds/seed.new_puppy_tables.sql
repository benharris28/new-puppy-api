BEGIN;

TRUNCATE
  users,
  products,
  food
  RESTART IDENTITY CASCADE;

  INSERT INTO users (email, password, city, dog_name, breed, start_weight, end_weight, home_date, product_complete, food_complete, vet_complete, trainer_complete, prephome_complete, pickup_complete, tricks_complete, feeding_complete, housetrain_complete)
  VALUES
    ('test1@test.com', 'test', 'Toronto', 'Fluffy', 'Golden doodle', 10, 70, '2020-06-25 00:00:00', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false');



    INSERT INTO products (
        active,
        image,
        product,
        brand,
        category,
        cost_large_dog,
        cost_medium_dog,
        cost_small_dog,
        purchase_text,
        description_text,
        canada_link,
        us_link
    )

    VALUES
    ('true', "https://snoozerpetproducts.com/wp-content/uploads/2014/05/snoozer-crate-pad-pillow1.jpg", "Dog Crate", "Crate Brand 1", "Dog Crate", "$100 (estimate)", "$80 (estimate)", "$70 (estimate)", "Buy this crate", "Dog crates are essential for house training your pet. It seems counter-intuitive, but they are strongly recommended by stress-free dog-trainers. Read more about crates in our training section", "https://www.amazon.ca/MidWest-Folding-Divider-Protecting-Leak-Proof/dp/B000TZ59ES/ref=zg_bs_6292338011_2?_encoding=UTF8&psc=1&refRID=BG4AX6Y2PHJ12FZDFYYD", "https://www.amazon.com/MidWest-Folding-Divider-Protecting-Leak-Proof/dp/B000QFWCJ6/ref=sr_1_2_sspa?dchild=1&keywords=dog+crate&qid=1590942319&sr=8-2-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFYUUtRU01JOVlOUEYmZW5jcnlwdGVkSWQ9QTA0MzQ5ODUyVExDRFpaNDIwODBRJmVuY3J5cHRlZEFkSWQ9QTA1NTM1ODgzS1hZRDlVQ0U5UzVJJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ=="),
    ('true', "https://images-na.ssl-images-amazon.com/images/I/61DyPXgNcpL._AC_SL1500_.jpg", "Amazon Basics", "Dog Bowls", "$20", "$20", "$20", "Buy these bowls", "No need to get too fancy - stainless steel bowls are a perfect starter to feeding your dog", "https://www.amazon.ca/AmazonBasics-Stainless-Steel-Dog-Bowl/dp/B01DOP5S9K/ref=sr_1_1_sspa?crid=WJZK3M9MK0ZX&dchild=1&keywords=dog+bowls&qid=1590942363&sprefix=dog+bowls%2Caps%2C156&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFYSEsySDFaMkdKMVAmZW5jcnlwdGVkSWQ9QTAzNzM0OTIyUVpVRkpaUjgwQVhTJmVuY3J5cHRlZEFkSWQ9QTA1NDU0ODIzNEZRR1hCNkJDMzZKJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==", "https://www.amazon.com/AmazonBasics-Stainless-Steel-Dog-Bowl/dp/B01DOP5S9K/ref=sr_1_1_sspa?crid=3DELASQB1SSU8&dchild=1&keywords=dog%2Bbowls&qid=1590942574&sprefix=dog%2Bbowls%2Caps%2C167&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzSzZWMkEwRDhaWjU5JmVuY3J5cHRlZElkPUEwOTEyMTA1MzdYWU9HUTdBU0E0OSZlbmNyeXB0ZWRBZElkPUEwMjU0OTE0TU5QUUw2MjI5UjlRJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ&th=1");
      