CREATE TABLE IF NOT EXISTS marketplace
(
    order_id bigint NOT NULL,
    order_value bigint NOT NULL,
    date_created character varying(255) COLLATE pg_catalog."default",
    status character varying(25) COLLATE pg_catalog."default",
    CONSTRAINT orders_pkey PRIMARY KEY (order_id)
);


INSERT INTO marketplace values (1,200,'2022-05-02','COMPLETED');
INSERT INTO marketplace values (2,300,'2022-05-02','COMPLETED');
INSERT INTO marketplace values (3,400,'2022-05-10','PROCESSING');
INSERT INTO marketplace values (4,50,'2021-05-12','PROCESSING');