FROM apache/airflow:2.2.0-python3.9
USER root

ARG AIRFLOW_HOME=/opt/airflow
ADD dags /opt/airflow/dags

RUN pip install --upgrade pip

USER airflow
RUN pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org boto3

USER ${AIRFLOW_UID}