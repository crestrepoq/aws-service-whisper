import json
import os
import whisper

def handler(event, context):
    try:
        # TODO implement
        print("Hola, es un test")
        print(os.listdir())
        model = whisper.load_model("base")
        result = model.transcribe("test_french_audio.mp4", fp16=False)
        print(result["text"])
        # return {
        #     'statusCode': 200,
        #     'body': json.dumps('Hello from Lambda!, {}'.format(event['name']))
        # }
        return {
            'statusCode': 200,
            'body': json.dumps(result["text"])
        }
    except Exception as e:
        print(e)