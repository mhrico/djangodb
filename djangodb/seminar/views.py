from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import Group
from django.contrib.auth.decorators import login_required, user_passes_test

from .models import Student
from .forms import CreateUserForm, StudentDataForm 

# Create your views here.

def is_student(user):
    return user.groups.filter(name='STUDENT').exists()

def is_librarian(user):
    return user.groups.filter(name='LIBRARIAN').exists()

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

@login_required(login_url='studentlogin')
@user_passes_test(is_student)
def studentlanding(request):
    return render(request, 'studentlanding.html', {})

@login_required(login_url='studentlogin')
@user_passes_test(is_student)
def requestbooks(request):
    return render(request, 'requestbooks.html', {})

@login_required(login_url='studentlogin')
@user_passes_test(is_student)
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

@login_required(login_url='librarianlogin')
@user_passes_test(is_librarian)
def librarianlanding(request):
    return render(request, 'librarianlanding.html', {})

@login_required(login_url='librarianlogin')
@user_passes_test(is_librarian)
def issuebooks(request):
    return render(request, 'issuebooks.html', {})

@login_required(login_url='librarianlogin')
@user_passes_test(is_librarian)
def updateissues(request):
    return render(request, 'updateissues.html', {})

def logoutuser(request):
    logout(request)
    return redirect('home')
