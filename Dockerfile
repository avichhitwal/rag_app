# Use a lightweight official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy all project files into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Set environment variables directly here (⚠️ Not safe for production)
ENV PINECONE_API_KEY=pcsk_2FKDUV_T35pfR1tJybKuxLjqLWwTXkZxPV3LAa4gvh8EVFfvXoNZeLCN5HKuoVzpz9NR9N
ENV PINECONE_INDEX_NAME=ragdocs
ENV GEMINI=AIzaSyDt6ottoOurSbY_WhW0K9_nz-PW9mNrlSQ

# Expose Flask port
EXPOSE 5000

# Default command to run the app
CMD ["python", "app.py"]
