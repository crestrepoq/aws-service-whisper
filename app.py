import json
import os
import whisper
import boto3

s3_client = boto3.client("s3")
S3_BUCKET_NAME = os.environ.get("BUCKET_NAME")
AUDIO_TEST = os.environ.get("AUDIO_TEST")

def handler(event, context):
    try:
        bucket = S3_BUCKET_NAME
        key = AUDIO_TEST
        print(os.listdir()) # Chekcing files before download audio
        # Downloading file to transcribe
        s3_client.download_file(S3_BUCKET_NAME, key, key)
        print(os.listdir()) # Chekcing if file was downloaded
        model = whisper.load_model("base")
        result = model.transcribe(key, fp16=False)
        return {
            'statusCode': 200,
            'body': json.dumps(result["text"])
        }
    except Exception as e:
        print(e)