from django.conf import settings

def export_vars(request):
    return {
        'APP_VERSION': settings.APP_VERSION
    }
