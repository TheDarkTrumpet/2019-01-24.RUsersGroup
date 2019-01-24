#!/bin/sh

docker run -v $PWD:/data --link mssql:mssql -it fabiang/sqlcmd -S mssql -U sa -P pAssw04d '-i/data/RestoreDatabase.sql'