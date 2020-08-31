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