import socket
import base64

hostname = socket.gethostname()    
IPAddr = socket.gethostbyname(hostname)
print("PARA OBTENER LA INFORMACIÓN DECODIFIQUE EL TEXTO")    
str_to_bytes = IPAddr.encode("ascii") #we have an encoded string
IpAddres64= base64.b64encode(str_to_bytes)#encoding bytes to base64
print(IpAddres64)
str_to_bytes = hostname.encode("ascii") #we have an encoded string
bytes_to_base64= base64.b64encode(str_to_bytes)#encoding bytes to base64
print(bytes_to_base64)