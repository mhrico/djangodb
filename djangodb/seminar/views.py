from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def home(request):
    return render(request, 'home.html', {})

def studentsignup(request):
    return render(request, 'studentsignup.html', {})

def studentlogin(request):
    return render(request, 'studentlogin.html', {})

def studentlanding(request):
    return render(request, 'studentlanding.html', {})

def librariansignup(request):
    return render(request, 'librariansignup.html', {})

def librarianlogin(request):
    return render(request, 'librarianlogin.html', {})

def librarianlanding(request):
    return render(request, 'librarianlanding.html', {})