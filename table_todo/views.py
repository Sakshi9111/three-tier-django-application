
from django.shortcuts import redirect, render
from django.views.generic import ListView,CreateView
from .models import Person
from .forms import PersonForm

# Create your views here.

class PersonList(ListView):
    model = Person
    template_name = 'index.html'

class PersonView(CreateView):
    model = Person
    template_name = 'personform.html'
    form_class = PersonForm
    


