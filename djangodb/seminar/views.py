from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import Group

from .models import Student
from .forms import CreateUserForm, StudentDataForm 

# Create your views here.
def home(request):
    return render(request, 'home.html', {})

def studentsignup(request):
    userform = CreateUserForm()
    studentdataform = StudentDataForm()

    if request.method == 'POST':
            userform = CreateUserForm(request.POST)
            studentdataform = StudentDataForm(request.POST)
            if userform.is_valid() and studentdataform.is_valid():
                
                user = userform.save()
                # user.set_password(user.password)
                user.save()

                data=studentdataform.save(commit=False)
                data.email = user.email
                data.save()

                my_student_group = Group.objects.get_or_create(name='STUDENT')
                my_student_group[0].user_set.add(user)

                messages.success(request, 'Account was created for ' + user.username)
                return redirect('studentlogin')

    return render(request, 'studentsignup.html', {'userform': userform, 'studentdataform': studentdataform})

def studentlogin(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username=username, password=password)
        
        if user is not None:
            login(request, user)
            return redirect('studentlanding')
        else:
            messages.info(request, 'Username or password is incorrect')

    return render(request, 'studentlogin.html', {})

def studentlanding(request):
    return render(request, 'studentlanding.html', {})

def requestbooks(request):
    return render(request, 'requestbooks.html', {})

def viewissued(request):
    return render(request, 'viewissued.html', {})

def librariansignup(request):
    userform = CreateUserForm()

    if request.method == 'POST':
            userform = CreateUserForm(request.POST)
            if userform.is_valid():
                
                user = userform.save()
                # user.set_password(user.password)
                user.save()

                my_librarian_group = Group.objects.get_or_create(name='LIBRARIAN')
                my_librarian_group[0].user_set.add(user)

                messages.success(request, 'Account was created for ' + user.username)
                return redirect('librarianlogin')
    return render(request, 'librariansignup.html', {'userform': userform})

def librarianlogin(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username=username, password=password)
        
        if user is not None:
            login(request, user)
            return redirect('librarianlanding')
        else:
            messages.info(request, 'Username or password is incorrect')

    return render(request, 'librarianlogin.html', {})

def librarianlanding(request):
    return render(request, 'librarianlanding.html', {})

def issuebooks(request):
    return render(request, 'issuebooks.html', {})

def updateissues(request):
    return render(request, 'updateissues.html', {})

def logoutuser(request):
    logout(request)
    return redirect('home')
