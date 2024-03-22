build:
	docker build -t oscrey/silero-tts-service:$(v) -t oscrey/silero-tts-service:latest .
push:
	docker push oscrey/silero-tts-service -a
run:
	docker run -p 9898:9898 -m 1g --rm --name tts_silero oscrey/silero-tts-service
dev:
	make build && make run
