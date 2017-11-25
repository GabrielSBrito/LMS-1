from django.contrib import admin
from main.models import Usuario

# Register your models here.
class UsuarioAdmin(admin.ModelAdmin):

	model= Usuario
	list_display = ['usuario_ra', 'usuario_nome', 'usuario_email', 'usuario_sexo', 'usuario_password']
	search_fields = ['usuario_ra']
	save_on_top = True

admin.site.register(Usuario, UsuarioAdmin)