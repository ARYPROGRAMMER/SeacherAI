import google.generativeai as genai
from config import Settings

settings = Settings()
class LLMService:
    def __init__(self):
        genai.configure(api_key=settings.GEMINI_API_KEY)
        self.model = genai.GenerativeModel("gemini-2.5-flash-preview-04-17") # gemini-2.0-flash

    def generate_response(self, query: str, search_results: list[dict]):
        # engineer prompt

        context = "\n\n".join([
            f"Source {i+1} ({res["url"]}):\n{res["content"]}"
            for i, res in enumerate(search_results)
        ])

        prompt = f"""
        Context from web search:
        {context}

        Query: {query}      

        Please provide a comprehensive, detailed, well-cited accurate response using the above context. 
        Think and reason deeply. Ensure it answers the query the user is asking. Do not use your knowledge until it is absolutely necessary.
        """

        response = self.model.generate_content(prompt, stream=True)
        
        for chunk in response:

            yield chunk.text

