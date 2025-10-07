# Generative AI Applications
[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/khawajaacode/GenerativeAI-Applications.git)

This repository contains a collection of applications demonstrating different use cases of Generative AI. Each project is self-contained within its own directory.

## Projects

### 1. Chat with Your Data

A customizable AI-powered chatbot that answers questions based on your own data. This application allows you to upload a PDF document and query its contents using a natural language web interface.

**Location:** [`build_chatbot_for_your_data/`](./build_chatbot_for_your_data/)

**Key Technologies:**
*   **Backend:** Python, Flask, LangChain
*   **LLM Integration:** IBM Watsonx (default), Hugging Face (alternative)
*   **Embeddings:** Hugging Face Instruct Embeddings, Sentence Transformers
*   **Vector Store:** ChromaDB
*   **Frontend:** HTML, CSS, JavaScript (jQuery)

#### Setup and Usage

1.  **Navigate to the project directory:**
    ```bash
    cd build_chatbot_for_your_data
    ```

2.  **Install dependencies:**
    ```bash
    pip install -r requirements.txt
    ```

3.  **Configure Credentials:**
    Update `worker.py` with your credentials for IBM Watsonx or uncomment and configure the Hugging Face Hub section.

4.  **Run the application:**
    ```bash
    python server.py
    ```

5.  Open your web browser and navigate to `http://0.0.0.0:8000`.

6.  Upload a PDF file and start asking questions about its content.

#### Docker Usage

You can also run the application using Docker:
```bash
cd build_chatbot_for_your_data
docker build -t chatbot-data .
docker run -p 8000:8000 chatbot-data
```

### 2. Software Development Chatbot

A lightweight client-server chatbot that demonstrates a direct integration with the OpenAI API. It's a simple Node.js application that serves a static frontend and proxies chat requests to the OpenAI API.

**Location:** [`software-dev-chatbot/`](./software-dev-chatbot/)

**Key Technologies:**
*   **Backend:** Node.js, Express.js
*   **API:** OpenAI `gpt-3.5-turbo-1106`
*   **Frontend:** HTML, CSS, JavaScript

#### Setup and Usage

1.  **Navigate to the project directory:**
    ```bash
    cd software-dev-chatbot
    ```

2.  **Install dependencies:**
    ```bash
    npm install
    ```

3.  **Set your OpenAI API Key:**
    You must set your OpenAI API key as an environment variable.
    ```bash
    export OPENAI_API_KEY='your-openai-api-key'
    ```

4.  **Start the server:**
    ```bash
    node server.js
    ```

5.  Open your web browser and go to `http://localhost:3000`.