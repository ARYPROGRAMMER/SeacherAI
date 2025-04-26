# SearcherAI

SearcherAI is a modern, sleek Flutter-powered application enhanced with Gemini AI capabilities for intelligent web search, real-time news aggregation, and comprehensive report generation. Built with a focus on user experience and information accuracy, SearcherAI helps users discover, organize, and process online information efficiently.

## Features

- **Intelligent Web Search**: Leverages Tavily API to perform targeted web searches with content extraction and processing
- **Clean, Modern UI**: Built with Flutter using a sleek dark theme interface with collapsible sidebar and responsive design
- **Smart Content Processing**: Extracts and processes web content to provide clean, readable information
- **Cross-Platform**: Available for iOS, Android, and Web platforms
- **Similarity-Based Content Ranking**: Uses cosine similarity to sort search results by relevance

## Project Structure

The project is organized into two main parts:

### Frontend (Flutter)

- Modern, responsive UI with dark theme
- Collapsible sidebar navigation
- Search interface with focus and attachment options
- Google Fonts integration

### Backend (Python)

- FastAPI server for handling search requests
- Tavily integration for high-quality web searches
- Trafilatura for web content extraction
- Content similarity ranking

## Getting Started

### Prerequisites

- Flutter SDK (^3.7.2)
- Python 3.8+
- Tavily API key

### Setup

1. **Clone the repository**

```bash
git clone https://github.com/yourusername/searcherai.git
cd searcherai
```

2. **Set up backend**

```bash
cd server
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements.txt
```

3. **Configure environment**
   Create a `.env` file in the server directory:

```
TAVILY_API_KEY=your_tavily_api_key_here
```

4. **Set up Flutter frontend**

```bash
flutter pub get
```

5. **Run the application**

```bash
flutter run
```

## Development

- The frontend is built with Flutter using a modular component architecture
- Backend services are organized following best practices for FastAPI applications
- State management follows modern Flutter patterns

## Contribution

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
