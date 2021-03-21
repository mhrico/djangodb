from django.forms import ModelForm, MultiWidget, TextInput, PasswordInput, Select
from django.contrib.auth.forms import UserCreationForm
from django import forms
from django.contrib.auth.models import User

from .models import Student

class CreateUserForm(UserCreationForm):
    def __init__(self, *args, **kwargs):
        super(CreateUserForm, self).__init__(*args, **kwargs)
        self.fields['username'].widget = TextInput(attrs = {'class': 'form-control', 'placeholder': 'ID'})
        self.fields['password1'].widget = PasswordInput(attrs = {'class': 'form-control', 'placeholder': 'Password'})
        self.fields['password2'].widget = PasswordInput(attrs = {'class': 'form-control', 'placeholder': 'Confirm Password'})
        self.fields['email'].widget = TextInput(attrs = {'type': 'email', 'class': 'form-control', 'placeholder': 'Email: example@example.com'})
    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']

class StudentDataForm(ModelForm):
    class Meta:
        model = Student
        fields = ['roll', 'name', 'number', 'email','department_code','session']
        widgets = {
            'roll': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Confirm ID'}),
            'name': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Name'}),
            'number': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Contact Number'}),
            'session': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Session: 20XX-XX'}),
            'department_code': forms.Select(attrs={'class':'form-select'}),      
        }

