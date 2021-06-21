from django.urls import path
from .views import home , cliente_registro

urlpatterns = [
    path('', home, name="home"),
    path('cliente_registro', cliente_registro, name="cliente_registro"),

]
