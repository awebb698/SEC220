create table customers
(
    id   int auto_increment
        primary key,
    name varchar(20) null,
    constraint id
        unique (id)
);

create table orders
(
    id          int auto_increment
        primary key,
    description varchar(20) null,
    cust_id     int         null,
    constraint id
        unique (id),
    constraint orders_ibfk_1
        foreign key (cust_id) references customers (id)
);

create index cust_id
    on orders (cust_id);


