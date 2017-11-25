from django.shortcuts import render, redirect, render_to_response
from django.http import HttpResponse
from django.template import RequestContext
from models import Usuario
from forms import LoginForm, formDadosA


# Create your views here.

def index(request):
        form = LoginForm(request.POST or None)
        if request.session.has_key('username') and request.session.has_key('user_ra') and request.session.has_key('user_id'):
                username = request.session['username']
                user_ra = request.session['user_ra']
                userid = request.session['user_id']
                return render(request, "PortalAluno.html", {'username': username, 'ra': user_ra})
	return render(request, "loginAluno.html", {'form': form})

def portalAluno(request):
        return render(request, "PortalAluno.html")

def boletimAluno(request):
        if request.session.has_key('username') and request.session.has_key('user_ra') and request.session.has_key('user_id'):
                username = request.session['username']
                user_ra = request.session['user_ra']
                userid = request.session['user_id']
                return render(request, "boletimA.html", {'username': username, 'ra': user_ra})

        return render(request, "boletimA.html")

def dadosAluno(request, ra_aluno):
        aluno = Usuario.objects.get(usuario_ra = ra_aluno)

        if(not request.session['user_ra']):
                return redirect(index)

        form = formDadosA(request.POST or None, instance= aluno)

        if request.method == 'POST':
                if form.is_valid():
                        form.save()
                        return render(request, 'dadosA.html', {'form': form, 'ra': ra_aluno})
	
        return render(request, 'dadosA.html', {'form': form})

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
        return render(request, "AulasGravadas.html", {'ra' : request.session['user_ra']})

def bad_request(request):
        response = render_to_response('400.html', context_instance=RequestContext(request))
        response.status_code = 400
        return response

def login(request):
        
        if request.method == 'POST':
                formLogin = LoginForm(request.POST)

                if formLogin.is_valid():
                        ra_user = formLogin.cleaned_data['usuario_ra']
                        pass_user = formLogin.cleaned_data['usuario_password']
                        
                        try:
                            login = Usuario.objects.get(usuario_ra = ra_user, usuario_password  = pass_user)
                        except Usuario.DoesNotExist:
                            login = '0'
                            
                        
                        if login is not '0':
                                username = login.usuario_nome
                                ra = login.usuario_ra
                                userid = login.usuario_id
                                user_level = login.usuario_nivel
                                user_email = login.usuario_email

                                request.session['username'] = username
                                request.session['user_id'] = userid
                                request.session['user_ra'] = ra
                                request.session['user_level'] = user_level
                                request.session['user_email'] = user_email

                                return render(request, "PortalAluno.html", {'username': username, 'ra': ra})
                                
                return render(request, "loginAluno.html", {'form': formLogin, 'trigger': 'Usuario nao encontrado'})

def logout(request):
        try:
                del request.session['username']
                del request.session['user_id']
                del request.session['user_ra']
        except:
                pass
        
        return redirect(index)

        


	