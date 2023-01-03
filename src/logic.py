import wikipedia


def wiki(name="war god", length=1):
    """this is a wikipedia fetcher"""

    my_wiki = wikipedia.summary(name, length)
    return my_wiki

def search_wiki(name):
    """search wikipedia by name"""

    results = wikipedia.search(name)
    return results
