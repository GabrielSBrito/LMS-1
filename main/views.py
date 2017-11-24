from django.shortcuts import render, redirect
from django.http import HttpResponse

# Create your views here.

def index(request):
	return render(request, "loginAluno.html")

def portalAluno(request):
        return render(request, "PortalAluno.html")

def boletimAluno(request):
        return render(request, "boletimA.html")

def dadosAluno(request):
        return render(request, "dadosA.html")

def dadosProfessor(request):
        return render(request, "dadosP.html")

def calendarioGeral(request):
        return render(request, "entrega-atividades.html")