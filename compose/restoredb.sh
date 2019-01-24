#!/bin/sh

docker run -v $PWD:/data --network=2019-01-24rusersgroup_default --link mssql_container:mssql -it fabiang/sqlcmd -S mssql -U sa -P pAssw04d '-i/data/RestoreDatabase.sql'