from django.shortcuts import render
from django.contrib.auth import passowrd_reset
from django.urls import reverse_lazy
from django.views import generic
from kpi.forms import PasswordResetFormWithUsername

class PasswordResetFormWithUsernameView(PasswordResetView):
	form_class = PasswordResetFormWithUsername
	success_url = reverse_lazy('password_reset_done')
	template_name = 'registration/password_reset_form.html'	