from django import forms
from django.forms import ModelForm, fields
from .models_generado import Cliente

class ClienteForm(ModelForm):
    class Meta: 
        model = Cliente 
        fields = ['nombre', 'apellido', 'usuario_pasajero', 'contrasena', 'correo_electronico', 'direccion_1', 'direccion_2']



