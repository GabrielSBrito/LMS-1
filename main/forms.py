from django.forms import ModelForm
from main.models import Usuario
from django import forms

class LoginForm(forms.ModelForm):
	
	user_ra = forms.CharField(label="RA", widget= forms.NumberInput(attrs={'class': 'form-control', 'placeholder': 'Insira seu RA'}))
	user_password = forms.CharField(label="Senha", widget= forms.PasswordInput(attrs={'class': 'form-control', 'placeholder': 'Senha', 'required': 'required'}))
	
	class Meta:
		model = Usuario
		fields = ['user_ra', 'user_password']