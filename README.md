# SearchAI

SearchAI is a modern, sleek Flutter-powered application enhanced with Gemini AI capabilities for intelligent web search, real-time news aggregation, and comprehensive report generation. Built with a focus on user experience and information accuracy, SearchAI helps users discover, organize, and process online information efficiently.

## Features

- **Intelligent Web Search**: Leverages Tavily API to perform targeted web searches with content extraction and processing
- **AI-Powered Analysis**: Uses Google's Gemini 2.5 Pro API to comprehensively analyze and synthesize search results
- **Real-time Content Streaming**: WebSocket implementation for streaming AI responses as they're generated
- **Clean, Modern UI**: Built with Flutter using a sleek dark theme interface with collapsible sidebar and responsive design
- **Smart Content Processing**: Extracts and processes web content using Trafilatura for clean, readable information
- **Cross-Platform**: Available for iOS, Android, and Web platforms
- **Similarity-Based Content Ranking**: Uses cosine similarity with Sentence Transformers to sort search results by relevance

## Project Structure

The project is organized into two main parts:

### Frontend (Flutter)

- Modern, responsive UI with dark theme
- Collapsible sidebar navigation
- Search interface with focus and attachment options
- Google Fonts integration for typography
- Material design components

### Backend (Python)

- FastAPI server for handling search requests and WebSockets
- Tavily integration for high-quality web searches
- Trafilatura for web content extraction
- Sentence Transformer for semantic content similarity ranking
- Google Gemini API integration for AI-powered responses

## Getting Started

### Prerequisites

- Flutter SDK (^3.7.2)
- Python 3.8+
- Tavily API key
- Google Gemini API key

### Setup

1. **Clone the repository**

```bash
git clone https://github.com/yourusername/searchai.git
cd searchai
```

2. **Set up backend**

```bash
cd server
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install fastapi uvicorn sentence_transformers trafilatura google-generativeai python-dotenv pydantic
```

3. **Configure environment**
   Create a `.env` file in the server directory:

```
TAVILY_API_KEY=your_tavily_api_key_here
GEMINI_API_KEY=your_gemini_api_key_here
```

4. **Set up Flutter frontend**

```bash
flutter pub get
```

5. **Run the application**

```bash
# Start the backend server
cd server
uvicorn main:app --reload

# In another terminal, run the Flutter app
flutter run
```

## Technical Details

### Backend Services

- **SearchService**: Performs web searches using Tavily API and extracts content with Trafilatura
- **SortSourceService**: Ranks search results by relevance using Sentence Transformers and cosine similarity
- **LLMService**: Generates AI responses using Google's Gemini 2.5 Pro model

### API Endpoints

- **WebSocket `/ws/chat`**: Streams search results and AI-generated content in real-time
- **REST `/chat`**: Provides non-streaming responses with complete search results and AI analysis

## Development

- The frontend is built with Flutter using a modular component architecture
- Backend services are organized following best practices for FastAPI applications
- State management follows modern Flutter patterns
- WebSocket communication for real-time content streaming

## Contribution

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

**Explore More:**

- [Flutter Documentation](https://flutter.dev/docs) for more details on how to use Flutter
- [Tavily Documentation](https://app.tavily.com/home) for more details on the Tavily API
- [Sentence Transformers](https://sbert.net/docs/sentence_transformer/pretrained_models.html) for more on Sentence Transformers
- [Trafilatura](https://trafilatura.readthedocs.io/en/latest/) for web content extraction
- [Gemini AI](https://aistudio.google.com/prompts/new_chat) for more on Google's Gemini API

---

## Crafted with ❤️ by Arya Singh
