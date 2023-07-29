Help:
	@echo "Usage: make [Command]"
	@echo "Commands:"
	@echo "  Build   : Build the Docker image"
	@echo "  Run     : Run the Docker container"
	@echo "  All    : Build and run the Docker container"
	@echo "  Help    : Show this help message"

Build:
	sudo docker build -t ftp .

Run:
	sudo docker run -d -p 20-21:20-21 -p 65500-65515:65500-65515 --rm --hostname CP-Labs --name ftp ftp

All: Build Run

Stop:
	sudo docker stop ftp

.PHONY: Help Build Run All Stop