"""
Definition of urls for django_get_started.
"""

from datetime import datetime
from django.conf.urls import patterns, url, include
from app.forms import BootstrapAuthenticationForm


from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    url(r'^$', 'main.views.loginAluno', name='home'),
    url(r'^portal$', 'main.views.portalAluno', name='Portal'),
    url(r'^portal/boletim$', 'main.views.boletimAluno', name='Boletim'),
    url(r'^portal/dados/aluno$', 'main.views.dadosAluno', name='DadosAluno'),
    url(r'^portal/dados/professor$', 'main.views.dadosProfessor', name='DadosProfessor'),
    url(r'^portal/calendario-geral$', 'main.views.calendarioGeral', name='calendarioGeral'),

    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    url(r'^admin/', include(admin.site.urls)),
)
