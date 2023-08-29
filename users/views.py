from django.shortcuts import render
from .models import UserModel



def display(request):
    users = UserModel.objects.all()

    context = {
        "users" : users, 
    }
    return render(request, 'users/display.html', context)