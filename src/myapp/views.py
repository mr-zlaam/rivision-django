from django.shortcuts import render


# Create your views here.
def index(request):
    context = {"name": "Zlaam", "age": 28, "role": "Developer"}
    return render(request, "index.html", {"context": context})


def counter(request):
    words: str = request.GET["textarea"]
    len_of_words: int = len(words)

    return render(request, "counter.html", {"length": len_of_words})
