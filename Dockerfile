
# FROM golang:1.12
# MAINTAINER Kamran Shamsi kshamsi99@gmail.com

# WORKDIR /go/src/hello/
# COPY . .

# CMD ./hello.go

FROM golang:1.12

WORKDIR /go/src/hello
COPY . .

#RUN go get -d -v ./...
#RUN go install -v ./...

RUN go get 
RUN go build
#RUN chmod +x hello.go

CMD ["hello"]