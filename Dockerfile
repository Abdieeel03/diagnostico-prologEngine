FROM swipl:latest

WORKDIR /app

COPY . .

EXPOSE 5000

CMD ["swipl", "-s", "server.pl"]
