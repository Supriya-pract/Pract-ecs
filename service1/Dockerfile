M python:3.11-slim as build
WORKDIR /app
COPY requirements.txt .
RUN python -m pip install --upgrade pip \
&& pip install --no-cache-dir -r requirements.txt -t /app/_vendor


FROM python:3.11-slim
WORKDIR /app
COPY --from=build /app/_vendor /usr/local/lib/python3.11/site-packages
COPY . /app
ENV PORT=5000
EXPOSE 5000
# non-root user
RUN useradd -m appuser && chown -R appuser /app
USER appuser
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]

