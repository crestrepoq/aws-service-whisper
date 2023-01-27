
### Python Images for AWS
[https://gallery.ecr.aws/lambda/python](https://gallery.ecr.aws/lambda/python)

#### SH Commands
```
docker build -t myfunction:latest .
docker run -p 9000:8080  myfunction:latest 
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'


docker image build \
    --tag lambda-container-demo:0.0.1 \
    $PWD

docker container run \
    --publish 9000:8080 \
    lambda-container-demo:0.0.1

curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"name":"Cristian"}' & echo


```

#### Guides
- [AWS Lambda with Docker Container Python + ECR Tutorial (Serverless Function)](https://www.youtube.com/watch?v=2VtuNOEw8S4)
- [Amazon Lambda Containers - How to Package AWS Functions as Container Images](https://www.youtube.com/watch?v=DsQbBVr-GwU)
- [Create the Lambda FFmpeg layer](https://aws.amazon.com/blogs/media/processing-user-generated-content-using-aws-lambda-and-ffmpeg/)
- [install ffmpeg on amazon ecr linux python](https://stackoverflow.com/questions/73660917/install-ffmpeg-on-amazon-ecr-linux-python)
- [Media Transcoder Using Container Images in AWS Lambda](https://jobinbasani.com/2021/01/03/media-transcoder-using-container-images-in-aws-lambda/)



### Lambda
- [Lambda Pricing](https://aws.amazon.com/lambda/pricing/)

