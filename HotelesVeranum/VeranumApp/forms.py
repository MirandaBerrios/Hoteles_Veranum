from django import forms
from django.forms import ModelForm, fields
from .models_generado import Cliente

class ClienteForm(ModelForm):
    class Meta:
        model = Cliente
        fields = ['id_cliente','id_boleta','primer_nombre','segundo_nombre','apellido_paterno',
        'apellido_materno','rut','d_verificador','direccion_1','direccion_2','telefono_cli']