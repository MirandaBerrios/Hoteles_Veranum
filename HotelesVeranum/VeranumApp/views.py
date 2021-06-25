from django.http import request
from django.shortcuts import render, redirect
from .models_generado import Cliente, Habitacion, Menu
from .forms import ClienteForm
from django.contrib import messages


def home(request):
    return render(request, "VeranumApp/home.html")


def acerca_nosotros(request):
    return render(request, "VeranumApp/acerca_nosotros.html")


def contacto(request):
    return render(request, "VeranumApp/contacto.html")


def habitaciones(request):
    return render(request, "VeranumApp/habitaciones.html",)


def iniciar_sesion(request):
    return render(request, "VeranumApp/iniciar_sesion.html")


def registrarse(request):
    data = {"mesg": '', "form": ClienteForm}
    if request.method == "POST":
        form = ClienteForm(request.POST, request.FILES)
        if form.is_valid():
            try:
                form.save()
                data["mesg"] = "EL usuario ha sido creado correctamente"
                return redirect(to='home')
            except Exception as e:
                data["mesg"] = e
        else:
            form = ClienteForm
    return render(request, "VeranumApp/registrarse.html", data )



def restaurante(request):
    data = {"list": Menu.objects.all().order_by('id_plato')}
    return render(request, "VeranumApp/restaurante.html", data)
