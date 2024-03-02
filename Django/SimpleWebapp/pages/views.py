from django.shortcuts import render
import socket

def home(request):
    hostname = socket.gethostname()
    return render(request, 'pages/home.html', {'hostname': hostname})
