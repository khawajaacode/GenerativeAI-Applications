# Software Dev Chatbot

Lightweight chatbot demo using OpenAI's Chat API (client + server).

## Overview
This folder contains a small Node/Express app that serves a static frontend and proxies chat requests to the OpenAI API implementation in [`OpenAIAPI.generateResponse`](software-dev-chatbot/openai.js).

## Important files
- Server: [software-dev-chatbot/server.js](software-dev-chatbot/server.js)  
- OpenAI wrapper: [software-dev-chatbot/openai.js](software-dev-chatbot/openai.js) — exposes [`OpenAIAPI.generateResponse`](software-dev-chatbot/openai.js)  
- Frontend: [software-dev-chatbot/public/index.html](software-dev-chatbot/public/index.html), [software-dev-chatbot/public/main.js](software-dev-chatbot/public/main.js), [software-dev-chatbot/public/style.css](software-dev-chatbot/public/style.css), [software-dev-chatbot/public/chat.png](software-dev-chatbot/public/chat.png)  
- Project metadata: [software-dev-chatbot/package.json](software-dev-chatbot/package.json)

## Requirements
- Node 16+ recommended
- An OpenAI API key set as the environment variable `OPENAI_API_KEY`
