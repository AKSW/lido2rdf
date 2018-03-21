Prefix xsd: <http://www.w3.org/2001/XMLSchema#>
Prefix lido: <http://lidordf.aksw.org/ontology/>
Prefix onlit: <http://lido.linguistic-lod.org/onlit#>
Prefix bibo: <http://purl.org/ontology/bibo/>
Prefix dct: <http://purl.org/dc/terms/>
Prefix lexvo: <http://lexvo.org/ontology#>
Prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix foaf: <http://xmlns.com/foaf/0.1/>
Prefix owl: <http://www.w3.org/2002/07/owl#>

Create View Area As
    Construct{
      ?A a lido:Area .
      ?A rdfs:label ?Arrrea .
    }
With
    ?A = uri('http://lidordf.aksw.org/resource/Area_',?AreaID)
    ?Arrrea = plainLiteral(?Area, "de")
From
    Areas;

Create View Language As
     Construct{
       ?Language a lido:Language ;
            rdfs:label ?Lang ;
            rdfs:label ?LangEn .
     }
With
    ?Language = uri('http://lidordf.aksw.org/resource/Language_',?LangID)
    ?Lang = plainLiteral(?Language)
    ?LangEn = plainLiteral(?Language_ENG, "en")
From
    Languages;
Create View Ort As
    Construct{
      ?Ort a lido:PublicationPlace ;
           rdfs:label ?pl.
    }
With
    ?Ort = uri('http://lidordf.aksw.org/resource/PublicationPlace_',?plID)
    ?pl = plainLiteral(?plBez)
From
    Ort;

Create View Pub As
    Construct{
      ?Pub a lido:Publisher;
           rdfs:label ?Bez .
    }
With
    ?Pub = uri('http://lidordf.aksw.org/resource/Publisher_',?puID)
    ?Bez = plainLiteral(?puBez)
From
    Pub;

Create View Reihe As
    Construct{
      ?Reihe a lido:Series ;
          rdfs:label ?Serie .
    }
With
    ?Reihe = uri('http://lidordf.aksw.org/resource/Series_',?reID)
    ?Serie = plainLiteral(?reBez)
From
    Reihe;

Create View ReihePublisherNotNULL As
    Construct{
      ?Reihe dct:publisher ?Publ .
    }
With
    ?Reihe = uri('http://lidordf.aksw.org/resource/Series_',?reID)
    ?Publ = uri('http://lidordf.aksw.org/resource/publisher_',?puID)
From
    [[SELECT "reID", "puID" FROM public."Reihe" WHERE NOT ("puID" = 0)]];

Create View TextSort As
    Construct{
      ?TextSort a lido:Textsort ;
                rdfs:label ?TSname .
    }
With
    ?TextSort = uri('http://lidordf.aksw.org/resource/Textsort_',?Text_sort_ID)
    ?TSname = plainLiteral(?Text_sort_name, "de")
From
    "Text sorts"

Create View Journals As
    Construct{
      ?Journal a lido:Journal ;
               skos:altLabel ?abbreviation ;
               dct:title ?title ;
               lido:subtitle ?subtitle ;
               lido:publicationYear ?releaseYear ;
               lido:description ?description .
    }
With
    ?Journal = uri('http://lidordf.aksw.org/resource/Journal_',?ID)
    ?abbreviation = plainLiteral(?ab)
    ?title = plainLiteral(?t1)
    ?subtitle = plainLiteral(?t2)
    ?releaseYear = plainLiteral(?jr)
    ?description = plainLiteral(?be)
From
    Journals

//Journals mit Publication Places, 0-Werte rausgefiltert
Create View JournalsPlaceNotNULL As
    Construct{
      ?Journal lido:pubPlace ?place .
    }
With
    ?Journal = uri('http://lidordf.aksw.org/resource/Journal_',?ID)
    ?place = uri('http://lidordf.aksw.org/resource/PublicationPlace_',?plID)
From
    [[SELECT "ID", "plID" FROM public."Journals" WHERE NOT ("plID" = 0)]];

//Journals mit Publishern, 0-Werte rausgefiltert
Create View JournalsPublisherNotNULL As
    Construct{
      ?Journal dct:publisher ?publisher .
    }
With
    ?Journal = uri('http://lidordf.aksw.org/resource/Journal_',?ID)
    ?publisher = uri('http://lidordf.aksw.org/resource/Publisher_',?puID)
From
    [[SELECT "ID", "puID" FROM public."Journals" WHERE NOT ("puID" = 0)]];


//alle 0-Werte aus Books gefiltert:

Create View BookPublisherNotNULL As
  Construct {
    ?Book dct:publisher ?pub .
  }
With
    ?Book = uri('http://lidordf.aksw.org/resource/Book_',?BookID)
    ?pub = uri('http://lidordf.aksw.org/resource/Publisher_',?puID)
From
    [[SELECT "BookID","puID" FROM public."Books" WHERE NOT ("puID" = 0)]];

Create View BookPublicationPlaceNotNULL As
  Construct {
    ?Book lido:pubPlace ?ort .
  }
With
    ?Book = uri('http://lidordf.aksw.org/resource/Book_',?BookID)
    ?ort = uri('http://lidordf.aksw.org/resource/PublicationPlace_',?plID)
From
    [[SELECT "BookID","plID" FROM public."Books" WHERE NOT ("plID" = 0)]];

Create View BookReiheNotNULL As
  Construct {
    ?Book lido:series ?reihe .
  }
With
    ?Book = uri('http://lidordf.aksw.org/resource/Book_',?BookID)
    ?reihe = uri('http://lidordf.aksw.org/resource/Series_',?reID)
From
    [[SELECT "BookID","reID" FROM public."Books" WHERE NOT ("reID" = 0)]];

Create View BookTextsorteNotNULL As
  Construct {
    ?Book lido:textsort ?txtsrt .
  }
With
    ?Book = uri('http://lidordf.aksw.org/resource/Book_',?BookID)
    ?txtsrt = uri('http://lidordf.aksw.org/resource/Textsort_',?ts)
From
    [[SELECT "BookID","ts" FROM public."Books" WHERE NOT ("ts" = 0)]];

Create View Book As
  Construct {
    ?Book a bibo:Book .
    ?Book lido:publicationYear ?jahr .
    ?Book dct:title ?title .
    ?Book lido:subtitle ?subtitle .
    ?Book bibo:volume ?volume .
    ?Book lido:issue ?issue .
    ?Book bibo:pages ?pages .
    ?Book bibo:edition ?edition .
    ?Book lexvo:language ?language .
    ?Book bibo:abstract ?abstract .
    ?Book bibo:isbn ?isbn .
    ?Book lido:description ?description .
    ?Book lido:published ?isPublished .
//    ?Book lido:hasAuthor ?author .
  }
With
    ?Book = uri('http://lidordf.aksw.org/resource/Book_',?BookID)
    ?jahr = plainLiteral(?jr)
    ?title = plainLiteral(?t1)
    ?subtitle = plainLiteral(?t2)
    ?volume = plainLiteral(?bd)
    ?issue = plainLiteral(?hf)
    ?pages = plainLiteral(?pg)
    ?edition = plainLiteral(?au)
//    ?language = plainLiteral(?ms)
    ?language = uri('http://lidordf.aksw.org/resource/Language_',?ms)
    ?abstract = plainLiteral(?ab)
    ?isbn = plainLiteral(?isbn)
    ?description = plainLiteral(?be)
    ?isPublished = typedLiteral(?pub, xsd:boolean)
//    ?author = uri('')
From
    [[SELECT "BookID",jr,t1,t2,bd,hf,pg,au,ms,ab,isbn,be,pub FROM public."Books"]];

Create View Author As
  Construct {
    ?Author a lido:Author .
    ?Author foaf:firstName ?firstname .
    ?Author foaf:lastName ?lastname .
  }
With
  ?Author = uri('http://lidordf.aksw.org/resource/Author_',?uri)
  ?firstname = plainLiteral(?firstname)
  ?lastname=plainLiteral(?lastname)
From
  [[SELECT firstname, lastname, uri FROM public.authors]];

Create View isAKindOf As
  Construct {
    ?Concept1 onlit:isAKindOf ?Concept2
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =1]];


Create View asAClassIsA As
  Construct {
    ?Concept1 onlit:asAClassIsA ?Concept2
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =2]];

Create View isAClassOf As
  Construct {
    ?Concept1 onlit:isAClassOf ?Concept2
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =3]];

Create View isAPartOf As
  Construct {
    ?Concept1 onlit:isPartOf ?Concept2
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =11]];


Create View isAPropertyAspectOf As
  Construct {
    ?Concept1 onlit:isProperty-AspectOf ?Concept2
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =12]];

Create View isSubjectOfDiscipline As
  Construct {
    ?Concept1 onlit:isSubjectOfDiscipline ?Concept2
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =13]];

Create View isRepresentativeOf As
  Construct {
    ?Concept1 onlit:isRepresentativeOf  ?Concept2
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =14]];


Create View isElementOfRelation As
  Construct {
    ?Concept1 onlit:isElementOfTheRelation ?Concept2
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =21]];

Create View isOperatorOf As
  Construct {
    ?Concept1 onlit:isOperatorOf ?Concept2
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =22]];

Create View isResultOf As
  Construct {
    ?Concept1 onlit:isResultOf ?Concept2
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =23]];

Create View manifests As
  Construct {
    ?Concept1 onlit:manifests ?Concept2
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =31]];

Create View marks As
  Construct {
    ?Concept1 onlit:marks ?Concept2
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =32]];

Create View isCrossRelatedWith As
  Construct {
    ?Concept1 onlit:isCross-RelatedWith ?Concept2
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =41]];

Create View ContrastsMinimllyWith As
  Construct {
    ?Concept1 onlit:contrastsMinimallyWith ?Concept2
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resource/Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =42]];

Create View hasAuthor As
  Construct {
    ?Book lido:hasAuthor ?author .
  }
With
    ?Book = uri('http://lidordf.aksw.org/resource/Book_',?BookID)
    ?author = uri('http://lidordf.aksw.org/resource/Author_',?uri)
From[[
  SELECT A.URI, B."BookID" FROM public."Books" As B, Authors AS A
  WHERE
    B.v1=A.firstname AND B.n1=A.lastname OR
    B.v2=A.firstname AND B.n2=A.lastname OR
    B.v3=A.firstname AND B.n3=A.lastname OR
    B.v4=A.firstname AND B.n4=A.lastname OR
    B.v5=A.firstname AND B.n5=A.lastname]]

Create View isAbstractNounOf As
  Construct {
    ?Term1 onlit:isAbstractNounOf ?Term2
  }
With
  ?Term1 = uri('http://lidordf.aksw.org/resource/Term_',?"Term-ID1")
  ?Term2 = uri('http://lidordf.aksw.org/resource/Term_',?"Term-ID2")
From
  [[SELECT * FROM public."Term-Term-Relation" WHERE "Relation_ID" =52]];


Create View isConcreteNounOf As
  Construct {
    ?Term1 onlit:isConcreteNounOf ?Term2
  }
With
  ?Term1 = uri('http://lidordf.aksw.org/resource/Term_',?"Term-ID1")
  ?Term2 = uri('http://lidordf.aksw.org/resource/Term_',?"Term-ID")
From
  [[SELECT * FROM public."Term-Term-Relation" WHERE "Relation_ID" =53]];

Create View std As
  Construct {
//Fehler in der Ontologie (eigentlich stdTerm)
    ?Term onlit:sdtTerm ?Concept
  }
With
  ?Term = uri('http://lidordf.aksw.org/resource/Term_',?"Term_ID")
  ?Concept = uri('http://lidordf.aksw.org/resource/Concept_',?"Concept_ID")
From
  [[SELECT * FROM public."Term relations" WHERE "Relation_ID" =61]];

Create View nonstd As
  Construct {
    ?Term onlit:non-stdTerm ?Concept
  }
With
  ?Term = uri('http://lidordf.aksw.org/resource/Term_',?"Term_ID")
  ?Concept = uri('http://lidordf.aksw.org/resource/Concept_',?"Concept_ID")
From
  [[SELECT * FROM public."Term relations" WHERE "Relation_ID" =62]];

Create View XRefsDescBooks As
  Construct {
    ?Desc lido:hasBibRef ?Book
  }
With
  ?Desc = uri('http://lidordf.aksw.org/resource/Concept_',?"DescID")
  ?Book = uri('http://lidordf.aksw.org/resource/Book_',?"BookID")
//  ?Book = uri('http://lidordf.aksw.org/resource/Book_',?BookID,"@" + ?Pages)
From
  [[SELECT * FROM public."XRefs (desc - book)"]];
//  [[SELECT "DescID", "BookID", "Pages" FROM public."XRefs (desc - book)"]];


//Create View XRefsLangBook As
//  Construct {
//    ?Book lido:hasLanguage ?Lang
//  }
//With
//  ?Lang = uri('http://lidordf.aksw.org/resource/Language_',?LangID)
//  ?Book = uri('http://lidordf.aksw.org/resource/Book_',?BookID)
//From
//  [[SELECT * FROM public."XRefs (lang - book)"]];

Create View XRefsAreaBook As
  Construct {
    ?Book lido:hasArea ?Area
  }
With
  ?Area = uri('http://lidordf.aksw.org/resource/Area_',?"AreaID")
  ?Book = uri('http://lidordf.aksw.org/resource/Book_',?"BookID")
From
  [[SELECT * FROM public."XRefs (area - book)"]];

Create View Concept As
  Construct {
    ?Concept a onlit:Concept .
    ?Concept rdfs:label ?Cname .
    ?Concept onlit:analyticProcedure ?ana .
    ?Concept onlit:definition ?def .
    ?Concept onlit:delimitationAndHistory ?del .
    ?Concept onlit:example ?ex .
//Fehler in der Ontologie (eigentlich phenomenology)
    ?Concept onlit:phenonmenology ?phe .
  }
With
  ?Concept = uri('http://lidordf.aksw.org/resource/Concept_',?"Concept_ID")
  ?Cname = plainLiteral(?"Concept_name")
  ?def = plainLiteral(?"Definition")
  ?del = plainLiteral(?"Delimitation")
  ?ex = plainLiteral(?"Examples")
  ?phe = plainLiteral(?"Phenomenology")
  ?ana = plainLiteral(?"Analytic Procedures")
From
  [[SELECT * FROM public."Concepts"]];

Create View Term As
  Construct {
    ?Term a onlit:Term .
    ?Term onlit:abbreviation ?abb .
    ?Term onlit:etymology ?ety .
    ?Term rdfs:label ?Tname .
  }
With
  ?Term = uri('http://lidordf.aksw.org/resource/Term_',?"Term_ID")
  ?abb = plainLiteral(?"Abbreviation")
  ?ety = plainLiteral(?"Etymology")
  ?Tname = plainLiteral(?"Term_name", ?"ISOLanguageCode")
From
  [[SELECT * FROM public."Terms" T LEFT JOIN public."Languages" L ON T."Language_ID" = L."LangID"]];
