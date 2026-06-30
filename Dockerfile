FROM swipl:9.2.2

WORKDIR /app

COPY . .

EXPOSE 5000

HEALTHCHECK --interval=15s --timeout=5s --start-period=10s --retries=3 \
  CMD swipl -g "use_module(library(http/http_client)), http_get('http://localhost:5000/health', _, [])" -t halt || exit 1

CMD ["swipl", "-s", "server.pl"]
