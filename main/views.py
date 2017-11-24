from django.shortcuts import render, redirect, render_to_response
from django.http import HttpResponse
from django.template import RequestContext

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

def entregaAtividades(request):
        return render(request, "entrega-atividades.html")

def portalProfessor(request):
        return render(request, "PortalProfessor.html")

def lancarNotas(request):
        return render(request, "lancarNotas.html")

def dadosProfessor(request):
        return render(request, "dadosP.html")

def subirAula(request):
        return render(request, "SubirAula.html")

def aulasGravadas(request):
        return render(request, "AulasGravadas.html")

def bad_request(request):
  response = render_to_response(
    '400.html',
    context_instance=RequestContext(request)
    )

    response.status_code = 400

    return response
