create table primes(n, prime);
drop table if exists primes;
create table primes(n unique, prime default 1);

insert into primes VALUES (2,1),(3,1);