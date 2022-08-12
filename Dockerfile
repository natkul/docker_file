FROM python:3
WORKDIR /opencart
COPY requirements.txt .
RUN pip install -U pip
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN ls
CMD ["/bin/bash"]
