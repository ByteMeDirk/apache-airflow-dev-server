# apache-airflow-dev-server
A Dockerized Apache Airflow Webserver using Airflow`latest` with Python`3.8` & PostgreSQL`10`.

.env file contains:
```
AIRFLOW__CORE__LOAD_DEFAULT_CONNECTIONS=False
AIRFLOW__CORE__SQL_ALCHEMY_CONN=postgres+psycopg2://airflow:airflow@postgres:5432/airflow
AIRFLOW__CORE__FERNET_KEY=81HqDtbqAywKSOumSha3BhWNOdQ26slT6K0YaZeZyPs=
AIRFLOW_CONN_METADATA_DB=postgres+psycopg2://airflow:airflow@postgres:5432/airflow
AIRFLOW_VAR__METADATA_DB_SCHEMA=airflow
AIRFLOW__SCHEDULER__SCHEDULER_HEARTBEAT_SEC=5
AIRFLOW__CORE__EXECUTOR=LocalExecutor
```

Run `docker-compose -f docker-compose.yml up --build` and find the local dev server on `localhost:8080`.


Note: if compose refuses to build with unknown permission issues; `chmod +x` usually for `airflow-entrypoint.sh`
