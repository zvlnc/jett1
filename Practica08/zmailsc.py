from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import smtplib
import subprocess


def enviarcorreo(de, para, caso, chave, mensagem):
    msg = MIMEMultipart()
    mensajinho = mensagem
    senha = chave
    msg['From'] = de
    msg['To'] = para
    msg['Subject'] = caso

    msg.attach(MIMEText(mensajinho, 'plain'))
    server = smtplib.SMTP('smtp.gmail.com: 587')
    server.starttls()
    server.login(msg['From'], senha)
    server.sendmail(msg['From'], msg['To'].split(","), msg.as_string())
    server.quit()


de = input("Introduzca quién envia el correo."),
para = input("Introduzca quién recibirá el correo"),
caso = input("Introduzca el asunto del correo"),
chave = input("Introduzca la contraseña del correo."),
mensagem = input("Introduzca el mensaje que contendra el correo."),


result = subprocess.Popen("./bashscript.sh")
text = result.communicate()[0]
return_code = result.returncode

if return_code == 0:
    enviarcorreo(de, para, caso, chave, mensagem)
    print("Correo enviado")
else:
    print("No se enviara el correo, se encontró un error de validación")
