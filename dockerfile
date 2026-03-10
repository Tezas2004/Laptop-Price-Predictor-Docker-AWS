FROM python:3.7

WORKDIR /app

COPY . /app

# upgrade packaging tools first, then install requirements without cache
RUN pip install --upgrade pip setuptools wheel && \
	pip install --no-cache-dir -r requirements.txt

EXPOSE 8501

CMD ["streamlit", "run", "app.py"]