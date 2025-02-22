from django.urls import path
from .views import classify_breed

urlpatterns=[
    path('classify/',classify_breed)
]