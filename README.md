# AWS Service Whisper (In proccess)
Guide about how to create a pipeline for using OpenAI Whisper transcriber service connecting AWS technologies like ECS, Lambda, S3 and more.

## Guides to read or watch
- [Python Images for AWS](https://gallery.ecr.aws/lambda/python)
- [AWS Lambda with Docker Container Python + ECR Tutorial (Serverless Function)](https://www.youtube.com/watch?v=2VtuNOEw8S4)
- [Amazon Lambda Containers - How to Package AWS Functions as Container Images](https://www.youtube.com/watch?v=DsQbBVr-GwU)
- [Create the Lambda FFmpeg layer](https://aws.amazon.com/blogs/media/processing-user-generated-content-using-aws-lambda-and-ffmpeg/)
- [install ffmpeg on amazon ecr linux python](https://stackoverflow.com/questions/73660917/install-ffmpeg-on-amazon-ecr-linux-python)
- [Media Transcoder Using Container Images in AWS Lambda](https://jobinbasani.com/2021/01/03/media-transcoder-using-container-images-in-aws-lambda/)
- [Lambda Pricing](https://aws.amazon.com/lambda/pricing/)
- [ECS Pricing](https://aws.amazon.com/ecr/pricing/)

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
```


