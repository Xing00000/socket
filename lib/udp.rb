require "socket"

ip = "127.0.0.1"
port = 8888
flag = Socket::MSG_PEEK # MSG_PEEK , MSG_WAITALL


server = UDPSocket.new
server.bind("127.0.0.1",8888)

client = UDPSocket.new
client.send("udp socket test message", flag, ip, port)


p server.recvfrom(100)

server.close