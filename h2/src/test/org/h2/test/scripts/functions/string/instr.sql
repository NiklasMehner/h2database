-- Copyright 2004-2014 H2 Group. Multiple-Licensed under the MPL 2.0,
-- and the EPL 1.0 (http://h2database.com/html/license.html).
-- Initial Developer: H2 Group
--

create memory table test(id int primary key, name varchar(255));
> ok

insert into test values(1, 'Hello');
> update count: 1

select instr('Hello World', 'World') e7, instr('abchihihi', 'hi', 2) e3, instr('abcooo', 'o') e2 from test;
> E7 E3 E2
> -- -- --
> 7  4  4
> rows: 1
