```python
import os
from dotenv import load_dotenv
from openai import OpenAI
# OLLAMA_BASE_URL = "http://host.docker.internal:11434/v1"
load_dotenv(override=True)

OLLAMA_BASE_URL = os.getenv("OLLAMA_BASE_URL")


ollama = OpenAI(base_url=OLLAMA_BASE_URL, api_key='ollama')

response = ollama.chat.completions.create(model="llama3.2", messages=[{"role": "user", "content": "Tell me a fun fact"}])
response.choices[0].message.content


messages = [
    {"role": "system", "content": "My name is Krishna abnd You are a helpful assistant"},
    {"role": "user", "content": "What's my name?"}
    ]


response = ollama.chat.completions.create(model="llama3.2", messages=messages)
response.choices[0].message.content





```




    'You mentioned earlier, your name is Krishna. Is there something I can help you with, or would you like to chat?'




```python
messages = [
    {"role": "system", "content": "You are a helpful assistant"},
    {"role": "user", "content": "what is 1+1 "}
    ]
response = ollama.chat.completions.create(model="llama3.2", messages=messages)
response.choices[0].message.content
```




    '1 + 1 = 2'




```python
import os
from dotenv import load_dotenv
from openai import OpenAI

load_dotenv(override=True)

OLLAMA_BASE_URL = os.getenv("OLLAMA_BASE_URL")


ollama = OpenAI(base_url=OLLAMA_BASE_URL, api_key='ollama')

messages = [
    {"role": "system", "content": "You are a helpful assistant"},
    {"role": "user", "content": "Hi! I'm Ed!"},
    {"role": "assistant", "content": "Hi Ed! How can I assist you today?"},
    {"role": "user", "content": "What's my name?"}
    ]
response = ollama.chat.completions.create(model="llama3.2", messages=messages)
response.choices[0].message.content
```




    'We already figured that out, Ed. Your name is Ed.'




```python

```
