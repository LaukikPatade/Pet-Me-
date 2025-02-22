from django.shortcuts import render
from django.http import JsonResponse
from rest_framework.decorators import api_view
from .ml_model import predict_breed
import os



@api_view(['POST'])
def classify_breed(request):
    print(request,"hello")
    if 'file' not in request.FILES:
        return JsonResponse({'error':'No file uploaded'},status=400)
    
    print(request)
    file=request.FILES['file']
    print("file name",file.name)
    # file_path=os.path.join("uploads",file.name)

    with open(file.name,"wb") as f:
        for chunk in file.chunks():
            f.write(chunk)

    breed_name=predict_breed(file.name)
    print(breed_name)
    return JsonResponse({"breed":breed_name})


    

# Create your views here.
