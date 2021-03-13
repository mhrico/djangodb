from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name="home"),
    path('studentsignup', views.studentsignup, name="studentsignup"),
    path('studentlogin', views.studentlogin, name="studentlogin"),
    path('librariansignup', views.librariansignup, name="librariansignup"),
    path('librarianlogin', views.librarianlogin, name="librarianlogin"),
]
