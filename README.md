# AWS Service Whisper (In proccess)
Guide about how to create a pipeline for using OpenAI Whisper transcriber service connecting AWS technologies like ECS, Lambda, S3 and more.

#### SH Commands for creating Docker Images
```
# Create the image
docker build -t myfunction:latest .
# Expose a port for testing your app
docker run -p 9000:8080  myfunction:latest 
# Command for test your app
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'

# Example:
docker image build \
    --tag lambda-container-demo:0.0.1 \
    $PWD

docker container run \
    --publish 9000:8080 \
    lambda-container-demo:0.0.1

curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"name":"Cristian"}' & echo

# Example for running local tests
docker container run \
> --env "AWS_ACCESS_KEY_ID=ADD_ACCESS_KEY_HERE" \
> --env "AWS_SECRET_ACCESS_KEY=ADD_SECRET_ACCESS_KEY_HERE" \
> --env "AWS_REGION=ADD_SPECIFIC_REGION_HERE" \
> --env "BUCKET_NAME=ADD_BUCKET_NAME_HERE" \
> --env "AUDIO_TEST=ADD_AUDIO_NAME_UPLOADED_TO_S3_HERE" \
> -p 9000:8080 lambda-container-demo:0.0.3
```


## Recommended guides and lectures
- [Python Images for AWS](https://gallery.ecr.aws/lambda/python)
- [AWS Lambda with Docker Container Python + ECR Tutorial (Serverless Function)](https://www.youtube.com/watch?v=2VtuNOEw8S4)
- [Amazon Lambda Containers - How to Package AWS Functions as Container Images](https://www.youtube.com/watch?v=DsQbBVr-GwU)
- [Create the Lambda FFmpeg layer](https://aws.amazon.com/blogs/media/processing-user-generated-content-using-aws-lambda-and-ffmpeg/)
- [install ffmpeg on amazon ecr linux python](https://stackoverflow.com/questions/73660917/install-ffmpeg-on-amazon-ecr-linux-python)
- [Media Transcoder Using Container Images in AWS Lambda](https://jobinbasani.com/2021/01/03/media-transcoder-using-container-images-in-aws-lambda/)
- [Lambda Pricing](https://aws.amazon.com/lambda/pricing/)
- [ECS Pricing](https://aws.amazon.com/ecr/pricing/)
- [Trigger AWS Lambda Function to Store Audio from API in S3 Bucket](https://medium.com/analytics-vidhya/trigger-aws-lambda-function-to-store-audio-from-api-in-s3-bucket-b2bc191f23ec)