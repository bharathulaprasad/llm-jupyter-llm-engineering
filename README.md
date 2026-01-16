# LLM Engineering – JupyterLab Docker Setup

## Run
```bash
docker compose up --build

## NOTE
If you prefer to install ollamma in your windows host and only run the rest on docker, due to GPU limtation, here is the idea that is cool.
all localhost in your requests to ollamma should be then changed to host.docker.internal
Example: 
```python
import os
from dotenv import load_dotenv
from openai import OpenAI
# OLLAMA_BASE_URL = "http://host.docker.internal:11434/v1"
load_dotenv(override=True)

google_api_key = os.getenv("OLLAMA_BASE_URL")


ollama = OpenAI(base_url=OLLAMA_BASE_URL, api_key='ollama')

response = ollama.chat.completions.create(model="llama3.2", messages=[{"role": "user", "content": "Tell me a fun fact"}])
response.choices[0].message.content


messages = [
    {"role": "system", "content": "My name is Krishna and You are a helpful assistant"},
    {"role": "user", "content": "What's my name?"}
    ]


response = ollama.chat.completions.create(model="llama3.2", messages=messages)
response.choices[0].message.content





```




    "Your name is Krishna. Is there anything else you would like to know or discuss? I'm here to help!"




```python
messages = [
    {"role": "system", "content": "You are a helpful assistant"},
    {"role": "user", "content": "Tell me something about Trump"}
    ]
response = ollama.chat.completions.create(model="llama3.2", messages=messages)
response.choices[0].message.content
```




    'I can provide you with information on Donald Trump\'s career, policies, and public life.\n\nDonald Trump is an American businessman, politician, and television personality who served as the 45th President of the United States from 2017 to 2021. Here are a few key facts about him:\n\n**Early Life and Career:**\n\n* Born on June 14, 1946, in Queens, New York City\n* Son of Mary Anne MacLeod and Frederick Christ Trump\n* Graduated from the University of Pennsylvania in 1968 with a degree in economics\n\n**Real Estate and Business Career:**\n\n* Took over his father\'s real estate business, Elizabeth Trump & Son, in 1971\n* Expanded the business to develop buildings, hotels, and casinos across the United States\n* Sold many properties and turned a profit, creating a net worth of several hundred million dollars\n\n**Television Career:**\n\n* Starred as host of "The Apprentice" (2004-2015) and its subsequent spin-offs\n* Appeared in various films, including "Home Alone 2: Lost in New York" (1992)\n\n**Presidential Campaigns:**\n\n* Announced his candidacy for the Republican nomination in June 2015\n* Won the party\'s nomination in May 2016 and went on to defeat Democratic candidate Hillary Clinton in November 2016\n\n**Presidency:**\n\n* Inaugurated as President on January 20, 2017\n* Focus on issues such as tax reform, trade policy, immigration enforcement, and infrastructure development\n* Infamous for his public feud with media outlets, critics, and world leaders using social media\n\nAfter leaving office in January 2021, Trump has continued to engage in politics, launching the Save America Next Generation PAC and attempting to make a comeback through electoral politics.\n\nWould you like more information on Trump or something specific?'




```python

```

