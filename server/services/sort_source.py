# cos similarity search

from typing import List
from sentence_transformers import SentenceTransformer
import numpy as np

class SortSourceService:

    def __init__(self):
        self.embedding_model = SentenceTransformer("all-mpnet-base-v2")

    def sort_service(self, query:str, search_results:List[dict]):
        relavant_docs = []
        query_embedding = self.embedding_model.encode(query)

        for res in search_results:
            res_embedding = self.embedding_model.encode(res['content'])

            similarity = float(np.dot(query_embedding, res_embedding)/(np.linalg.norm(query_embedding) * np.linalg.norm(res_embedding)))
            res["relavance_score"] = similarity

            if similarity > 0.4:
                relavant_docs.append(res)
        
        print("--------------------------------------------------------------------------------------------------")
        print(f"sort res for within {relavant_docs}")
        return sorted(relavant_docs, key = lambda x: x["relavance_score"], reverse=True)