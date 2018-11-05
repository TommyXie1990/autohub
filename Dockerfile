# python 3.6作为运行环境
FROM python:3.6

# 设置工作目录 
WORKDIR /workspace

# 将当期目录内容复制到位于 /workspace 中的容器中
ADD . /workspace

# 定义安装过程环境变量
ENV SLUGIFY_USES_TEXT_UNIDECODE yes

# 安装python 自动化测试解决方案依赖 
RUN pip install -r requirements.txt

# 映射80端口 
EXPOSE 80

# 定义环境变量 
# ENV NAME world

# 容器启动时运行以下命令
#CMD ["python", "app.py"]

