from django.contrib import admin
from main.models import Usuario

# Register your models here.
class UsuarioAdmin(admin.ModelAdmin):

	model= Usuario
	list_display = ['user_ra', 'user_nome', 'user_email', 'user_sexo', 'user_password']
	search_fields = ['user_ra']
	save_on_top = True

admin.site.register(Usuario, UsuarioAdmin)