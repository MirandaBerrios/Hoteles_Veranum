from django.shortcuts import render , redirect
from .models_generado import Cliente
from .forms import ClienteForm


def home(request):
    return render(request, "VeranumApp/home.html")