# python 3.6作为运行环境
FROM python:3.6

# 设置工作目录 
WORKDIR /autohub

# 将当期目录内容复制到位于 /workspace 中的容器中
ADD . /autohub

# 定义安装过程环境变量
ENV SLUGIFY_USES_TEXT_UNIDECODE yes

# 设置airflow工作目录
ENV AIRFLOW_HOME=/autohub/airflow

# 安装python 自动化测试解决方案依赖 
RUN pip install -r requirements.txt

# 初始化airflow

RUN airflow initdb

# 映射端口 
EXPOSE 8080 5000 80

# 定义环境变量 
# ENV NAME world

# 容器启动时运行以下命令
#CMD ["python", "app.py"]

# 启动airflow
# 启动web服务
# RUN airflow webserver -p 8080
# 启动scheduler
# RUN airflow scheduler

