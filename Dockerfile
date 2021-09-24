FROM alpine AS tformbuild
WORKDIR /source
RUN apk add --no-cache go git
RUN git clone https://github.com/GoogleCloudPlatform/terraformer /source/terraformer
RUN cd /source/terraformer && go mod download && go build -v

FROM alpine
WORKDIR /app
COPY --from=tformbuild /source/terraformer/terraformer /bin/

ENTRYPOINT ["/bin/terraformer"]
