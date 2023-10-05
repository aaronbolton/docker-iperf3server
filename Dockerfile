# Use Alpine Linux as the base image
FROM alpine:latest

# Install iperf3
RUN apk update && apk add iperf3

# Expose the default iperf3 port
EXPOSE 5201

# Set the default command to run iperf3 as a server
CMD ["iperf3", "-s"]
