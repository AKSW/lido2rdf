Prefix xsd:<http://www.w3.org/2001/XMLSchema#>
Prefix lido:<http://lidordf.aksw.org/resources/lido.owl#>
Prefix bibo: <http://purl.org/ontology/bibo/>
Prefix dct: <http://purl.org/dc/terms/>
Prefix lexvo: <http://lexvo.org/ontology#>
Prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix foaf: <http://xmlns.com/foaf/0.1/>
Prefix owl: <http://www.w3.org/2002/07/owl#>

Create View RelationsEins As
    Construct{
      ?Relation a lido:subordinatingRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#isAKindOf')
	?name = plainLiteral("is a Kind of")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =1]];

Create View RelationsZwei As
    Construct{
      ?Relation a lido:subordinatingRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#asAClassIsA')
	?name = plainLiteral("as a class is a")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =2]];

Create View RelationsDrei As
    Construct{
      ?Relation a lido:subordinatingRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#isAClassOf')
	?name = plainLiteral("is a class of")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =3]];

Create View RelationsElf As
    Construct{
      ?Relation a lido:subordinatingRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#isPartOf')
	?name = plainLiteral("is part of")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =11]];

Create View RelationsZwoelf As
    Construct{
      ?Relation a lido:subordinatingRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#isProperty-AspectOf')
	?name = plainLiteral("is poperty-aspect of")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =12]];

Create View RelationsDreizehn As
    Construct{
      ?Relation a lido:subordinatingRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#isSubjectOfDiscipline')
	?name = plainLiteral("is subject of discipline")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =13]];

Create View RelationsVierzehn As
    Construct{
      ?Relation a lido:subordinatingRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#isRepresentativeOf')
	?name = plainLiteral("is representive of")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =14]];

Create View RelationsEinundzwanzig As
    Construct{
      ?Relation a lido:subordinatingRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#isElementOfTheRelation')
	?name = plainLiteral("is element of the relation")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =21]];

Create View RelationsZweiundzwanzig As
    Construct{
      ?Relation a lido:subordinatingRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#isOperatorOf')
	?name = plainLiteral("is operator of")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =22]];

Create View RelationsDreiundzwanzig As
    Construct{
      ?Relation a lido:subordinatingRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#isResultOf')
	?name = plainLiteral("is result of")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =23]];

Create View RelationsEinunddreissig As
    Construct{
      ?Relation a lido:subordinatingRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#manifests')
	?name = plainLiteral("manifests")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =31]];

Create View RelationsZweiunddreissig As
    Construct{
      ?Relation a lido:subordinatingRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#marks')
	?name = plainLiteral("marks")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =32]];

Create View RelationsEinundvierzig As
    Construct{
      ?Relation a lido:coordinatingRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#isCross-RelatedWith')
	?name = plainLiteral("is cross-related with")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =41]];

Create View RelationsZweiundVierzig As
    Construct{
      ?Relation a lido:coordinatingRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#contrastsMinimallyWith')
	?name = plainLiteral("contrasts minimal with")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =42]];

Create View RelationsZweiundfuenfzig As
    Construct{
      ?Relation a lido:term-termRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#isAbstractNounOf')
	?name = plainLiteral("is abstract noun of")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =52]];

Create View RelationsDreiundfuenfzig As
    Construct{
      ?Relation a lido:term-termRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#isConcreteNounOf')
	?name = plainLiteral("is concrete noun of")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =53]];

Create View RelationsEinundsechzig As
    Construct{
      ?Relation a lido:term-conceptRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#stdTerm')
	?name = plainLiteral("is std Term")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =61]];

Create View RelationsZweiundsechzig As
    Construct{
      ?Relation a lido:term-conceptRelation ;
                rdfs:type owl:ObjectProperty ;
				rdfs:label ?name .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#non-stdTerm')
	?name = plainLiteral("is non-std Term")
From
    [[SELECT * FROM public."Relations" WHERE "Relation_ID" =62]];
//ueberprueft -bis hierhin ist alles neu (Stand 19.06.2017)

Create View Area As
    Construct{
      ?A a lido:Area .
      ?A rdfs:label ?Arrrea .
    }
With
    ?A = uri('http://lidordf.aksw.org/resources/lido.owl#Area_',?AreaID)
    ?Arrrea = plainLiteral(?Area, "de")
From
    Areas;

Create View Language As
     Construct{
       ?Language a lido:language ; //oder doch die lexvo-Language??
            rdfs:label ?Lang ;
            rdfs:label ?LangEn .
     }
With
    ?Language = uri('http://lidordf.aksw.org/resources/lido.owl#Language_',?LangID)
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
    ?Ort = uri('http://lidordf.aksw.org/resources/lido.owl#PublicationPlace_',?plID)
    ?pl = plainLiteral(?plBez)
From
    Ort;

Create View Pub As
    Construct{
      ?Pub a lido:Publisher;
           rdfs:label ?Bez .
    }
With
    ?Pub = uri('http://lidordf.aksw.org/resources/lido.owl#Publisher_',?puID)
    ?Bez = plainLiteral(?puBez)
From
    Pub;

Create View Reihe As
    Construct{
      ?Reihe a lido:series ;
          rdfs:label ?Serie .
    }
With
    ?Reihe = uri('http://lidordf.aksw.org/resources/lido.owl#Series_',?reID)
    ?Serie = plainLiteral(?reBez)
From
    Reihe;

Create View ReihePublisherNotNULL As
    Construct{
      ?Reihe dct:Publisher ?Publ .
    }
With
    ?Reihe = uri('http://lidordf.aksw.org/resources/lido.owl#Series_',?reID)
    ?Publ = uri('http://lidordf.aksw.org/resources/lido.owl#Publisher_',?puID)
From
    [[SELECT "reID", "puID" FROM public."Reihe" WHERE NOT ("puID" = 0)]];

Create View TextSorts As
    Construct{
      ?TextSort a lido:textsort ;
                rdfs:label ?TSname .
    }
With
    ?TextSort = uri('http://lidordf.aksw.org/resources/lido.owl#Textsort_',?Text_sort_ID)
    ?TSname = plainLiteral(?Text_sort_name, "de")
From
    "Text sorts"

Create View Relations As
    Construct{
      ?Relation a lido:Relation ;
                rdfs:label ?RelationsName .
    }
With
    ?Relation = uri('http://lidordf.aksw.org/resources/lido.owl#Relation_',?Relation_ID)
    ?RelationsName = plainLiteral(?Relation_name)
From

    Relations

Create View Journals As
    Construct{
      ?Journal a lido:Journal ;
//             skos:altLabel ?abbreviation ;
               dct:title ?title ;
               lido:subtitle ?subtitle ;
               lido:publicationYear ?releaseYear ;
               lido:description ?description .
    }
With
    ?Journal = uri('http://lidordf.aksw.org/resources/lido.owl#Journal_',?ID)
//  ?abbreviation = plainLiteral(?ab)
    ?title = plainLiteral(?t1)
    ?subtitle = plainLiteral(?t2)
    ?releaseYear = plainLiteral(?jr)
    ?description = plainLiteral(?be)
From
    Journals

//Journals mit Publication Places, 0-Werte rausgefiltert
Create View JournalsPlaceNotNULL As
    Construct{
      ?Journal lido:PublicationPlace ?place .
    }
With
    ?Journal = uri('http://lidordf.aksw.org/resources/lido.owl#Journal_',?ID)
    ?place = uri('http://lidordf.aksw.org/resources/lido.owl#PublicationPlace_',?plID)
From
    [[SELECT "ID", "plID" FROM public."Journals" WHERE NOT ("plID" = 0)]];

//Journals mit Publishern, 0-Werte rausgefiltert
Create View JournalsPublisherNotNULL As
    Construct{ 
      ?Journal lido:Publisher ?publisher . 
    }
With
    ?Journal = uri('http://lidordf.aksw.org/resources/lido.owl#Journal_',?ID)
    ?publisher = uri('http://lidordf.aksw.org/resources/lido.owl#Publisher_',?puID)
From
    [[SELECT "ID", "puID" FROM public."Journals" WHERE NOT ("puID" = 0)]];


//alle 0-Werte aus Books gefiltert:

Create View BookPublisherNotNULL As
  Construct {
    ?Book lido:Publisher ?pub .
  }
With
    ?Book = uri('http://purl.org/ontology/bibo/Book/',?BookID)
    ?pub = uri('http://lidordf.aksw.org/resources/lido.owl#Publisher_',?puID)
From 
    [[SELECT "BookID","puID" FROM public."Books" WHERE NOT ("puID" = 0)]];

Create View BookPublicationPlaceNotNULL As
  Construct {
    ?Book lido:PublicationPlace ?ort .
  }
With
    ?Book = uri('http://purl.org/ontology/bibo/Book/',?BookID)
    ?ort = uri('http://lidordf.aksw.org/resources/lido.owl#PublicationPlace_',?plID)
From
    [[SELECT "BookID","plID" FROM public."Books" WHERE NOT ("plID" = 0)]];

Create View BookReiheNotNULL As
  Construct {
    ?Book lido:Series ?reihe .
  }
With
    ?Book = uri('http://purl.org/ontology/bibo/Book/',?BookID)
    ?reihe = uri('http://lidordf.aksw.org/resources/lido.owl#Series_',?reID)
From
    [[SELECT "BookID","reID" FROM public."Books" WHERE NOT ("reID" = 0)]];

Create View BookTextsorteNotNULL As
  Construct {
    ?Book lido:textsort ?txtsrt .
  }
With
    ?Book = uri('http://purl.org/ontology/bibo/Book/',?BookID)
    ?txtsrt = uri('http://lidordf.aksw.org/resources/lido.owl#Textsort_',?ts)
From
    [[SELECT "BookID","ts" FROM public."Books" WHERE NOT ("ts" = 0)]];


// ###########
// mkeddyfussel
Create View Book As
  Construct {
    ?Book a bibo:Book .
    ?Book lido:publicationYear ?jahr .
    ?Book dct:title ?title .
    ?Book lido:subtitle ?subtitle . 
    ?Book bibo:volume ?volume .
    ?Book lido:issue ?issue .
    ?Book bibo:pages?pages .
    ?Book bibo:edition ?edition .
    ?Book lexvo:language ?language . 
    ?Book bibo:abstract ?abstract .
    ?Book bibo:isbn ?isbn .
    ?Book lido:description ?description .
    ?Book lido:published ?isPublished .
  }
With
    ?Book = uri('http://purl.org/ontology/bibo/Book/',?BookID)
    ?jahr = plainLiteral(?jr)
    ?title = plainLiteral(?t1)
    ?subtitle = plainLiteral(?t2)
    ?volume = plainLiteral(?bd)
    ?issue = plainLiteral(?hf)
    ?pages = plainLiteral(?pg)
    ?edition = plainLiteral(?au)
    ?language = plainLiteral(?ms)
    ?abstract = plainLiteral(?ab)
    ?isbn = plainLiteral(?isbn)
    ?description = plainLiteral(?be)
    ?isPublished = typedLiteral(?pub, xsd:boolean)
From 
    [[SELECT "BookID",jr,t1,t2,bd,hf,pg,au,ms,ab,isbn,be,pub FROM public."Books"]];

Create View Author As
  Construct {
    ?Author a bibo:Author .
    ?Author foaf:firstName ?firstname .
    ?Author foaf:lastName ?lastname .
  }
With
  ?Author = uri('http://lidordf.aksw.org/resources/lido.owl#Author_',?uri)
  ?firstname = plainLiteral(?firstname)
  ?lastname=plainLiteral(?lastname)
From
  [[SELECT firstname, lastname, uri FROM public.authors]];

Create View isAKindOf As
  Construct {
    ?Concept1 lido:isAKindOf ?Concept2 
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =1]];


Create View isAClassIsA As
  Construct {
    ?Concept1 lido:asAClassIsA ?Concept2 
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =2]];

Create View isAClassOf As
  Construct {
    ?Concept1 lido:isAClassOf ?Concept2 
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =3]];  

Create View isAPartOf As
  Construct {
    ?Concept1 lido:isPartOf ?Concept2 
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =11]];


Create View isAPropertyAspectOf As
  Construct {
    ?Concept1 lido:isProperty-AspectOf ?Concept2 
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =12]];

Create View isSubjectOfDiscipline As
  Construct {
    ?Concept1 lido:isSubjectOfDiscipline ?Concept2 
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =13]];

Create View isRepresentativeOf As
  Construct {
    ?Concept1 lido:isRepresentativeOf  ?Concept2 
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =14]];


Create View isElementOfRealtion As
  Construct {
    ?Concept1 lido:isElementOfTheRealtion ?Concept2 
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =21]];

Create View isOperatorOf As
  Construct {
    ?Concept1 lido:isOperatorOf ?Concept2 
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =22]];

Create View isResultOf As
  Construct {
    ?Concept1 lido:isResultOf ?Concept2 
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =23]];

Create View manifests As
  Construct {
    ?Concept1 lido:manifests ?Concept2 
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =31]];

Create View marks As
  Construct {
    ?Concept1 lido:marks ?Concept2 
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =32]];

Create View isCrossRelatedWith As
  Construct {
    ?Concept1 lido:isCross-RelatedWith ?Concept2 
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =41]];

Create View ContrastsMinimllyWith As
  Construct {
    ?Concept1 lido:contrastsMinimallyWith ?Concept2 
  }
With
  ?Concept1 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_1_ID)
  ?Concept2 = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?Concept_2_ID)
From
  [[SELECT * FROM public."Conceptual relations" WHERE "Relation_ID" =42]];

Create View hasAuthor As
  Construct {
    ?Book lido:hasAuthor ?author .
  }
With
    ?Book = uri('http://purl.org/ontology/bibo/Book/',?BookID)
    ?author = uri('http://lidordf.aksw.org/resources/lido.owl#Author_',?uri)
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
    ?Term1 lido:isAbstractNounOf ?Term2 
  }
With
  ?Term1 = uri('http://lidordf.aksw.org/resources/lido.owl#Term_',?"Term_ID")
  ?Term2 = uri('http://lidordf.aksw.org/resources/lido.owl#Term_',?"Term-ID1")
From
  [[SELECT * FROM public."Term-Term-Relation" WHERE "Relation_ID" =52]];


Create View isConcreteNounOf As
  Construct {
    ?Term1 lido:isConcreteNounOf ?Term2 
  }
With
  ?Term1 = uri('http://lidordf.aksw.org/resources/lido.owl#Term_',?"Term_ID")
  ?Term2 = uri('http://lidordf.aksw.org/resources/lido.owl#Term_',?"Term-ID1")
From
  [[SELECT * FROM public."Term-Term-Relation" WHERE "Relation_ID" =53]]; 

Create View std As
  Construct {
    ?Term lido:stdTerm ?Concept 
  }
With
  ?Term = uri('http://lidordf.aksw.org/resources/lido.owl#Term_',?"Term_ID")
  ?Concept = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?"Concept_ID")
From
  [[SELECT * FROM public."Term relations" WHERE "Relation_ID" =61]];

Create View nonstd As
  Construct {
    ?Term lido:non-stdTerm ?Concept 
  }
With
  ?Term = uri('http://lidordf.aksw.org/resources/lido.owl#Term_',?"Term_ID")
  ?Concept = uri('http://lidordf.aksw.org/resources/lido.owl#Concept_',?"Concept_ID")
From
  [[SELECT * FROM public."Term relations" WHERE "Relation_ID" =62]];

Create View XRefsDescBooks As
  Construct {
    ?Desc lido:basBibRef ?Book
  }
With
  ?Desc = uri('http://lidordf.aksw.org/resources/lido.owl#Concepts_',?"DescID")
  ?Book = uri('http://purl.org/ontology/bibo/Book/',?"BookID")
From
  [[SELECT * FROM public."XRefs (desc - book)"]];

Create View XRefsLangBook As
  Construct {
    ?Lang lido:hasLanguage ?Book
  }
With
  ?Lang = uri('http://lidordf.aksw.org/resources/lido.owl#Language_',?LangID)
  ?Book = uri('http://purl.org/ontology/bibo/Book/',?BookID)
From
  [[SELECT * FROM public."XRefs (lang - book)"]];

Create View XRefsAreaBook As
  Construct {
    ?Area lido:hasArea ?Book
  }
With
  ?Area = uri('http://lidordf.aksw.org/resources/lido.owl#Area_',?"AreaID")
  ?Book = uri('http://purl.org/ontology/bibo/Book/',?"BookID")
From
  [[SELECT * FROM public."XRefs (area - book)"]];

Create View XRefsDescBooks As
  Construct {
    ?Desc lido:hasBibRef ?Book .
  }
With
  ?Desc = uri('http://lidordf.aksw.org/resources/lido.owl#Concepts_',?DescID)
  ?Book = uri('http://purl.org/ontology/bibo/Book/',?BookID,"@" + ?Pages)
From
  [[SELECT "DescID", "BookID", "Pages" FROM public."XRefs (desc - book)"]];

Create View Concepts As
  Construct {
    ?Concept a lido:Concepts .
    ?Concept rdfs:label ?Cname .
    ?Concept lido:analyticProcedure ?ana .
    ?Concept lido:definition ?def .
    ?Concept lido:deliminationAndHistory ?del .
    ?Concept lido:example ?ex .
    ?Concept lido:phenonmenology ?phe .
  }
With
  ?Concept = uri('http://lidordf.aksw.org/resources/lido.owl#Concepts_',?"Concept_ID")
  ?Cname = plainLiteral(?"Concept_name")
  ?def = plainLiteral(?"Definition")
  ?del = plainLiteral(?"Delimitation")
  ?ex = plainLiteral(?"Examples")
  ?phe = plainLiteral(?"Phenomenology")
  ?ana = plainLiteral(?"Analytic Procedures")
From
  [[SELECT * FROM public."Concepts"]];

Create View Terms As
  Construct {
    ?Term a lido:Term .
    ?Term lido:abbreviation ?abb .
    ?Term lido:hasLanguage ?lang .
    ?Term lido:etymology ?ety .
    ?Term rdfs:label ?Tname .
  }
With
  ?Term = uri('http://lidordf.aksw.org/resources/lido.owl#Term_',?"Term_ID")
  ?abb = plainLiteral(?"Abbreviation")
//  ?lang = uri('http://lexvo.org/ontology/Language_',?"Language_ID")
  ?lang = uri('http://lidordf.aksw.org/resources/lido.owl#Language_',?Language_ID)
  ?ety = plainLiteral(?"Etymology")
  ?Tname = plainLiteral(?"Term_name")
From
  [[SELECT * FROM public."Terms"]];
