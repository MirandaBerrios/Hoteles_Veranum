from django.shortcuts import render , redirect
from .models_generado import Cliente
from .forms import ClienteForm


def home(request):
    return render(request, "VeranumApp/home.html")


def cliente_registro(request):
    data = {"list": Cliente.objects.all().order_by('id_cliente')} 
    return render(request, "VeranumApp/cliente_registro.html", data)