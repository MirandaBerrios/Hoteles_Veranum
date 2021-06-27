from django.urls import path
from .views import acerca_nosotros, home ,contacto , habitaciones, iniciar_sesion, registrarse, restaurante

urlpatterns = [
     path('', home , name="home"),
     path('acerca_nosotros', acerca_nosotros, name="acerca_nosotros"),
     path('contacto', contacto, name="contacto"),
     path('habitaciones', habitaciones, name="habitaciones"),
     path('iniciar_sesion', iniciar_sesion, name="iniciar_sesion"),
     path('registrarse', registrarse, name="registrarse"),
     path('restaurante', restaurante, name="restaurante"),

]
