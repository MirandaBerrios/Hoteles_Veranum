from django import forms
from django.forms import ModelForm , fields
from .models_generado import Cliente

class ClienteForm(ModelForm):
    class meta : 
        model = Cliente 
        fields = ['__all__']

