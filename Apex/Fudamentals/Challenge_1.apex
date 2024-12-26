// create a data set that holds two categories of articles and the articles themselves.

Set<String> apexArticles= new Set<String>{'1. Demystifying Apex Collections','2. Datatypes and avariables in Apex'};
    Set<String> lightningArticles= new Set<String>{'1. Events in Aura Framework','2. Developing resusable componets'};

Map<String,set<String>> articles = new Map<String,set<String>>();
articles.put('Apex',apexArticles);
articles.put('Lightning',lightningArticles);


system.debug(articles);