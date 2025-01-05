---
Title: LOAD
Description: This is our load page.
Template: analysis
---

Laddningstider
=======================

Webbplatsers laddningstid påverkar både användarupplevelsen och deras ranking i sökmotorer.

Urval
-----------------------

De tre webbplatserna valdes utifrån olika kategorier för att få en bredare förståelse av laddningstid och användbarhet:

### 1.  Boozt.com - Representerar e-handelsbranschen.

![Skärmdump](assets/img/boozt.jpg)


* [Första sidan](https://www.boozt.com/se/sv)


* [Kvinnor](https://www.boozt.com/se/sv/klader-for-kvinnor)


* [Varukorg](https://www.boozt.com/se/sv/shopcart)


### 2. Svt.se - En populär svensk nyhets- och mediaplattform.


![Skärmdump](assets/img/svt.png)


* [Första sidan](https://www.svt.se/)


* [Svt lokalt](https://www.svt.se/nyheter/lokalt/)


* [Svt sport](https://www.svt.se/sport/fotboll/)



### 3. Skatteverket - En offentlig tjänstwebbplats med blandad användning av statisk och dynamisk information.

![Skärmdump](assets/img/skatteverket.png)

* [Första sidan](https://www.skatteverket.se/)


* [Folkbokföring](https://www.skatteverket.se/privat/folkbokforing.4.18e1b10334ebe8bc800039.html)


* [E-tjänster och blanketer](https://www.skatteverket.se/privat/etjansterochblanketter.4.5d699354142b230302033f.html)

*** 



Verktyg och metod
-----------------------

**Verktyg som används:**


* Google PageSpeed Insights: För att mäta webbplatsens prestanda på både mobil och desktop.

* Chrome Developer Tools (DevTools): För att mäta laddningstider, antalet resurser och sidstorlek genom fliken “Network”.


**Metod:**


Jag mätte laddningstiden, antalet resurser och sidstorleken genom att analysera tre specifika sidor för varje webbplats.
Med hjälp av DevTools samlade jag in dessa mätvärden under tre iterationer per sida och beräknade ett genomsnitt.
Jag sammanställde resultaten i ett Google Kalkylark och presenterade dem i analysen.

Resultat
-----------------------
<div class="embed-container">
<iframe src="https://docs.google.com/spreadsheets/d/e/2PACX-1vQ7PZQc7ZA_bj7nJepkQsP6vSmhKJqmc7YoBNApu0YcsTxrCeIOKcjByVKezrSb0QHWaX0SOnsI3JU0/pubhtml?widget=true&amp;headers=false"></iframe>
</div>

Analys
-----------------------

Jag har testat tre hemsidor (Boozt, SVT och Skatteverket) för att se hur snabbt de laddar och hur bra de presterar överlag. Här är vad jag upptäckte:


Boozt hade flera sidor som inte blev godkända av Google PageSpeed Insights. Förstasidan klarade sig bättre än vissa andra sidor, men särskilt i mobilversionen var laddningstiderna för höga på flera ställen.

*Positivt*: Laddningstiderna är inte katastrofala, och CLS (hur mycket sidan hoppar runt under laddning) är ändå ganska bra.

*Negativt*: Sidor som varukorgen hade problem med TTFB (hur snabbt servern svarar), vilket gör att användaren får vänta länge innan sidan börjar laddas.

SVT klarade sig bättre än Boozt och hade bra tekniska värden på de flesta sidor. Förstasidan fick godkänt både på mobil och dator, vilket är ett stort plus.

*Positivt*: Låga CLS-värden gör att sidorna känns stabila, och LCP (hur snabbt huvudinnehållet visas) är ganska snabb.

*Negativt*: På vissa sidor kunde mobilversionen ha lite långsammare interaktionstid (INP), vilket kan påverka hur snabbt användaren kan börja använda sidan.

Skatteverket hade de bästa resultaten av de tre sidorna. Alla testade sidor blev godkända, och deras TTFB och CLS var utmärkta. Det känns som en stabil och snabb sida, både i mobil- och desktopversioner.

*Positivt*: Snabba svarstider från servern och låga LCP gör att sidan laddar snabbt och känns responsiv.

*Negativt*: Inget direkt att klaga på, men det går alltid att optimera ännu mer för att minska laddningstiderna.

Referenser
-----------------------

Hemsidorna specificerade ovan samt PageSpeed Insights och Firefox Devtools.

Övrigt
-----------------------

Rapport författad av: Mirnes Mrso
