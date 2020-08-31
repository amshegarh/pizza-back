CREATE TABLE public.pizzas
(
    id integer NOT NULL DEFAULT nextval('pizzas_id_seq'::regclass),
    name text NOT NULL,
    description text,
    "pictureURL" text,
    "priceUSD" real NOT NULL,
    "priceEUR" real NOT NULL,
    CONSTRAINT pizzas_pkey PRIMARY KEY (id)
);

INSERT INTO public.pizzas(
    id, name, description, "pictureURL", "priceUSD", "priceEUR")
VALUES (1,	'pizza1',	'this is a description Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet lobortis elit, ac blandit mi. Morbi sodales tellus dui, non ultricies erat venenatis ut. Nulla vehicula sit amet purus in mattis. ',	'https://avatars.mds.yandex.net/get-pdb/1042636/58dc08de-4361-4b6b-8315-6542634efa26/s1200',	10,	12),
    (2,	'pizza2',	'this is a description 2 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet lobortis elit, ac blandit mi. Morbi sodales tellus dui, non ultricies erat venenatis ut. Nulla vehicula sit amet purus in mattis. ',	'https://makkam.ru/d/pizza_pepperoni_05_zoom.jpg',	5,	21),
    (3,	'pizza3',	'this is a description 3 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet lobortis elit, ac blandit mi. Morbi sodales tellus dui, non ultricies erat venenatis ut. Nulla vehicula sit amet purus in mattis. ',	'https://makkam.ru/d/pizza_pepperoni_03_zoom.jpg',	7,	14),
    (4,	'pizza4',	'this is a description 4 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet lobortis elit, ac blandit mi. Morbi sodales tellus dui, non ultricies erat venenatis ut. Nulla vehicula sit amet purus in mattis. ',	'http://s2.eshoper.ru/ul/0a68764227b96a381139daaf95e80db4.jpg',	3,	5),
    (5,	'pizza5',	'this is a description 5 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet lobortis elit, ac blandit mi. Morbi sodales tellus dui, non ultricies erat venenatis ut. Nulla vehicula sit amet purus in mattis. ',	'https://st3.depositphotos.com/3223199/18981/i/950/depositphotos_189816706-stock-photo-spicy-pizza-with-cheese-and.jpg',	7,	9),
    (6,	'pizza6',	'this is a description 6 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet lobortis elit, ac blandit mi. Morbi sodales tellus dui, non ultricies erat venenatis ut. Nulla vehicula sit amet purus in mattis. ',	'https://www.hedefhalk.com/images/haberler/515126.jpg',	3.5,	5.5),
    (7,	'pizza7',	'this is a description 7 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet lobortis elit, ac blandit mi. Morbi sodales tellus dui, non ultricies erat venenatis ut. Nulla vehicula sit amet purus in mattis. ',	'https://avatars.mds.yandex.net/get-pdb/2441247/113295be-cae2-427f-818f-cb9be725a1d8/s1200',	7.99,	8.5),
    (8,	'pizza8',	'this is a description 8 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet lobortis elit, ac blandit mi. Morbi sodales tellus dui, non ultricies erat venenatis ut. Nulla vehicula sit amet purus in mattis. ',	'https://www.lacubanitapizzeria.com/ressources/images/d72dc0477c26.jpg',	13.99,	17.55);

CREATE TABLE public.delivery
(
    cost real NOT NULL
);

INSERT INTO public.delivery(cost) VALUES (10.0);

CREATE TABLE public.orders
(
    "orderId" uuid NOT NULL,
    "pizzaIds" integer[] NOT NULL,
    "userId" uuid,
    address text NOT NULL,
    name text NOT NULL,
    CONSTRAINT orders_pkey PRIMARY KEY ("orderId")
)