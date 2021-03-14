from django.shortcuts import render
from django.http import HttpResponse
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import Group

from .models import Student
from .forms import StudentDataForm, CreateUserForm

# Create your views here.
def home(request):
    return render(request, 'home.html', {})

def studentsignup(request):
    userform = UserCreationForm()
    studentdataform = StudentDataForm()

    if request.method == 'POST':
            userform = CreateUserForm(request.POST)
            studentdataform = StudentDataForm(request.POST)
            if userform.is_valid() and studentdataform.is_valid():
                user = userform.save()
                user.set_password(user.password)
                user.save()

                data=studentdataform.save(commit=False)
                data.user=user
                data.save()

                my_student_group = Group.objects.get_or_create(name='STUDENT')
                my_student_group[0].user_set.add(user)

    return render(request, 'studentsignup.html', {'userform': userform, 'studentdataform': studentdataform})

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