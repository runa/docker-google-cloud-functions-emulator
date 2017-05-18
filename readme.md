```
$ docker run -it -p 8010:8010 runixo/google-cloud-functions-emulator /bin/bash
# functions start
Starting Google Cloud Functions Emulator...
Google Cloud Functions Emulator STARTED
No functions deployed ¯\_(ツ)_/¯. 
# functions deploy foo --trigger-http

$ curl http://127.0.0.1:8010/my-project/us-central1/foo
```
