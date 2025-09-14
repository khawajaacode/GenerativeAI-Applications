# Build Chatbot for Your Data

A project to create a customizable AI-powered chatbot that can answer questions based on your own data sources.

## Features

- Upload and index your documents (PDF, TXT, CSV, etc.)
- Ask questions in natural language
- Get accurate, context-aware answers
- Easy integration with web applications
- Extensible backend for custom data connectors

## Getting Started

### Prerequisites

- Python 3.8+
- Node.js (for frontend)
- [Optional] Docker

### Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/yourusername/build_chatbot_for_your_data.git
    cd build_chatbot_for_your_data
    ```

2. **Backend Setup:**
    ```bash
    cd backend
    pip install -r requirements.txt
    ```

3. **Frontend Setup:**
    ```bash
    cd ../frontend
    npm install
    ```

4. **Start the application:**
    - Backend: `python server.py`
    - Frontend: `npm start`

### Using Docker

```bash
docker-compose up --build
```

## Usage

1. Upload your data files via the web interface.
2. Ask questions in the chat window.
3. Receive answers based on your uploaded data.

## Configuration

- Edit `config.yaml` to set data directories, model parameters, and API keys.

## Technologies Used

- Python (FastAPI, LangChain)
- JavaScript (React)
- OpenAI API (or other LLM providers)
- Vector databases (e.g., FAISS, Pinecone)

## Contributing

Contributions are welcome! Please open issues or submit pull requests.

## License

This project is licensed under the MIT License.

## Acknowledgements

- [LangChain](https://github.com/langchain-ai/langchain)
- [OpenAI](https://openai.com/)
- [FAISS](https://github.com/facebookresearch/faiss)


