from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name="home"),

    path('studentsignup', views.studentsignup, name="studentsignup"),
    path('studentlogin', views.studentlogin, name="studentlogin"),
    path('studentlanding', views.studentlanding, name="studentlanding"),

    path('requestbooks', views.requestbooks, name="requestbooks"),
    path('viewissued', views.viewissued, name="viewissued"),


    path('librariansignup', views.librariansignup, name="librariansignup"),
    path('librarianlogin', views.librarianlogin, name="librarianlogin"),
    path('librarianlanding', views.librarianlanding, name="librarianlanding"),

    path('logoutuser', views.logoutuser, name="logoutuser"),
    
]
