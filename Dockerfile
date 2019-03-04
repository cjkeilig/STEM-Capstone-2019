FROM python:3

# Drop log meesages directly back to the console
ENV PYTHONBUFFERED 1

RUN mkdir /app
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy source files
COPY src/ /app/
