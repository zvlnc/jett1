import base64
  
  
file = open('mystery_img2.txt', 'rb')
byte = file.read()
file.close()
  
decodeit = open('mystery_img2_decoded.jpeg', 'wb')
decodeit.write(base64.b64decode((byte)))
decodeit.close()