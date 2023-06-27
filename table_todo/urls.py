from django.urls import path
from . import views

urlpatterns = [
    path('list/', views.PersonList.as_view(), name = 'home'),
    path('form/',views.PersonView.as_view(),name ='create_list')

]
