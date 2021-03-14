from django.forms import ModelForm
from django.contrib.auth.forms import UserCreationForm
from django import forms
from django.contrib.auth.models import User

from .models import Student

class StudentDataForm(ModelForm):
    class Meta:
        model = Student
        fields = ['roll', 'name', 'number', 'email','department_code']

class CreateUserForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']