from django.contrib import admin
from main.models import Contato

# Register your models here.

class ContatoAdmin(admin.ModelAdmin):

	model= Contato
	list_display = ['contato_nome', 'contato_email', 'contato_favorito']
	list_filter = ['contato_sexo', 'contato_estado_civil']
	search_fields = ['contato_nome']
	save_on_top = True

admin.site.register(Contato, ContatoAdmin)