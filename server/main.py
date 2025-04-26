from fastapi import FastAPI
from pydantic_models.chat_body import ChatBody
from services.search_service import SearchService
from services.sort_source import SortSourceService


app = FastAPI()
search_service = SearchService()
sort_source_service = SortSourceService()

@app.post("/chat")
def chat_endpoint(body: ChatBody):
    search_results = search_service.web_search(body.query)
    sorted_results = sort_source_service.sort_service(body.query, search_results)
    

    return body.query