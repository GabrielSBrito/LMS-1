"""
Definition of urls for django_get_started.
"""

from datetime import datetime
from django.conf.urls import patterns, url, include, handler400
from app.forms import BootstrapAuthenticationForm
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    url(r'^$', 'main.views.index', name='home'),
    url(r'^portal/$', 'main.views.portalAluno', name='Portal'),
    url(r'^portal/aulas-gravadas/$', 'main.views.aulasGravadas', name='aulasGravadas'),
    url(r'^portal/boletim/$', 'main.views.boletimAluno', name='Boletim'),
    #url(r'^portal/dados/aluno/$', 'main.views.dadosAluno', name='DadosAluno'),
    url(r'^portal/dados/aluno/(?P<ra_aluno>\d+)/$', 'main.views.dadosAluno', name='DadosAluno'),
    url(r'^portal/dados/professor/$', 'main.views.dadosProfessor', name='DadosProfessor'),
    url(r'^portal/calendario-geral/$', 'main.views.calendarioGeral', name='calendarioGeral'),
    url(r'^portal/entrega-atividades/$', 'main.views.entregaAtividades', name='entregaAtividades'),
    url(r'^portal/professor/$', 'main.views.portalProfessor', name='portalProfessor'),
    
    url(r'^portal/professor/notas/$', 'main.views.lancarNotas', name='lancarNotas'),
    url(r'^portal/professor/dados/$', 'main.views.dadosProfessor', name='dadosProfessor'),
    url(r'^portal/professor/subir-aula/$', 'main.views.subirAula', name='subirAula'),
    url(r'^login$', 'main.views.login', name='login'),
    url(r'^login-professor$', 'main.views.loginProfessor', name='loginProfessor'),
    url(r'^logout/$', 'main.views.logout', name='logout'),

    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    url(r'^admin/', include(admin.site.urls)),
)

handler400 = 'main.views.bad_request'