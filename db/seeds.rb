Article.destroy_all
User.destroy_all

journalist = User.create(email: 'journalist@mail.com', role: 'journalist', password: 'password')
registered = User.create(email: 'registered@mail.com', role: 'registered', password: 'password')
subscriber = User.create(email: 'subscriber@mail.com', role: 'subscriber', password: 'password')

sports_article_1 = Article.create(
  title: 'Six Nations 2020: Fixtures, title permutations and catch-up as tournament returns',
  lead: 'The longest Six Nations in history will finally reach its conclusion this month, 273 days after the tournament began on 1 February.',
  category: 'sports',
  content: "Both the men's and women's 2020 competitions were postponed in March because of the Covid-19 outbreak, with four teams still chasing the title in the men's tournament and England dominating the women's championship.",
  journalist_id: journalist.id,
  premium: false,
  location: "International"
)
file = URI.open('https://d.ibtimes.co.uk/en/full/1536039/rugby-sevens-scrum.jpg')
sports_article_1.image.attach(io: file, filename: 'scrum.jpg')

sports_article_2 = Article.create(
  title: 'Six Nations 2020: Fixtures, title permutations and catch-up as tournament returns',
  lead: 'The longest Six Nations in history will finally reach its conclusion this month, 273 days after the tournament began on 1 February.',
  category: 'sports',
  content: "Both the men's and women's 2020 competitions were postponed in March because of the Covid-19 outbreak, with four teams still chasing the title in the men's tournament and England dominating the women's championship.",
  journalist_id: journalist.id,
  premium: false,
  location: "International"
)
file = URI.open('https://culturalawareness.com/wp-content/uploads/2016/04/Culture-Shock-Medium1.jpg')
sports_article_2.image.attach(io: file, filename: 'food.jpg')

sports_article_3 = Article.create(
  title: 'Six Nations 2020: Fixtures, title permutations and catch-up as tournament returns',
  lead: 'The longest Six Nations in history will finally reach its conclusion this month, 273 days after the tournament began on 1 February.',
  category: 'politics',
  content: "Both the men's and women's 2020 competitions were postponed in March because of the Covid-19 outbreak, with four teams still chasing the title in the men's tournament and England dominating the women's championship.",
  journalist_id: journalist.id,
  premium: false,
  location: "International"
)
file = URI.open('https://tse3.mm.bing.net/th?id=OIP.E2BtwfugC4oYSNq04eSILwHaEK&pid=Api&P=0&w=308&h=174')
sports_article_3.image.attach(io: file, filename: 'scrum.jpg')

sports_article_4 = Article.create(
  title: 'Six Nations 2020: Fixtures, title permutations and catch-up as tournament returns',
  lead: 'The longest Six Nations in history will finally reach its conclusion this month, 273 days after the tournament began on 1 February.',
  category: 'politics',
  content: "Both the men's and women's 2020 competitions were postponed in March because of the Covid-19 outbreak, with four teams still chasing the title in the men's tournament and England dominating the women's championship.",
  journalist_id: journalist.id,
  premium: false,
  location: "International"
)
file = URI.open('https://tse3.mm.bing.net/th?id=OIP.USS0KcRqomch-HIGU8Gh8wHaEK&pid=Api&P=0&w=355&h=201')
sports_article_4.image.attach(io: file, filename: 'hoc.jpg')

sports_article_5 = Article.create(
  title: 'Protests in Naples over possible lockdown',
  lead: 'Infections are rising across the whole of Italy but the Italian prime minister has said he wants to avoid a new national lockdown.',
  category: 'politics',
  content: "Naples and the surrounding region already have a curfew in place and many schools are shut but Vincenzo De Luca, head of Campania, said on Facebook: 'We need to shut everything down for a month, for 40 days.",
  journalist_id: journalist.id,
  premium: false,
  location: "International"
)
file = URI.open('https://tse2.mm.bing.net/th?id=OIP.hBwUc6d0KlIz1Rsi5CDSywHaE8&pid=Api&P=0&w=278&h=186')
sports_article_5.image.attach(io: file, filename: 'napoles.jpg')

sports_article_6 = Article.create(
  title: 'Six Nations 2020: Fixtures, title permutations and catch-up as tournament returns',
  lead: 'The longest Six Nations in history will finally reach its conclusion this month, 273 days after the tournament began on 1 February.',
  category: 'politics',
  content: "Both the men's and women's 2020 competitions were postponed in March because of the Covid-19 outbreak, with four teams still chasing the title in the men's tournament and England dominating the women's championship.",
  journalist_id: journalist.id,
  premium: false,
  location: "International"
)
file = URI.open('https://tse3.mm.bing.net/th?id=OIP.USS0KcRqomch-HIGU8Gh8wHaEK&pid=Api&P=0&w=355&h=201')
sports_article_6.image.attach(io: file, filename: 'hoc.jpg')

sports_article_7 = Article.create(
  title: 'Coronavirus: Macron announces curfews in France to halt spread of Covid-19',
  lead: "France's president has announced curfews in Paris and eight other cities in France to be imposed from Saturday.",
  category: 'politics',
  content: 'Emmanuel Macron said people must stay indoors from 9pm to 6am to help control the spread of coronavirus.',
  journalist_id: journalist.id,
  premium: true,
  location: "International"
)
file = URI.open('https://www.jta.org/wp-content/uploads/2017/05/macron-3.jpg')
sports_article_7.image.attach(io: file, filename: 'macron.jpg')

sports_article_8 = Article.create(
  title: 'Six Nations 2020: Fixtures, title permutations and catch-up as tournament returns',
  lead: 'The longest Six Nations in history will finally reach its conclusion this month, 273 days after the tournament began on 1 February.',
  category: 'politics',
  content: "Both the men's and women's 2020 competitions were postponed in March because of the Covid-19 outbreak, with four teams still chasing the title in the men's tournament and England dominating the women's championship.",
  journalist_id: journalist.id,
  premium: true,
  location: "International"
)
file = URI.open('https://tse3.mm.bing.net/th?id=OIP.USS0KcRqomch-HIGU8Gh8wHaEK&pid=Api&P=0&w=355&h=201')
sports_article_8.image.attach(io: file, filename: 'hoc.jpg')

sports_article_4 = Article.create(
  title: 'Six Nations 2020: Fixtures, title permutations and catch-up as tournament returns',
  lead: 'The longest Six Nations in history will finally reach its conclusion this month, 273 days after the tournament began on 1 February.',
  category: 'politics',
  content: "Both the men's and women's 2020 competitions were postponed in March because of the Covid-19 outbreak, with four teams still chasing the title in the men's tournament and England dominating the women's championship.",
  journalist_id: journalist.id,
  premium: false,
  location: "International"
)
file = URI.open('https://tse3.mm.bing.net/th?id=OIP.USS0KcRqomch-HIGU8Gh8wHaEK&pid=Api&P=0&w=355&h=201')
sports_article_4.image.attach(io: file, filename: 'hoc.jpg')

local_article_1 = Article.create(
  title: 'STOCKHOLM: Man hotade att skjuta polis – varningsskott avlossades',
  lead: 'En man i 55-årsåldern har sedan tidigare varit anhållen i sin frånvaro efter att ha hotat personal från Kronofogden.',
  category: 'sports',
  content: 'Under lördagskvällen var polisen på plats vid mannens bostad för att hämta in honom. På plats så hotar han polisen med vapen – och polisen fick avlossa varningsskott. – Mannen hotar att skjuta polisen om de går in i bostaden. Man blev tvungen att avväpna personen som nu är frihetsberövad, säger Magnus Magnus Jansson Klarin, presstalesperson vid polisen region Mitt. Polisen har upprättat en anmälan om hot mot tjänsteman, och bostaden spärras av för en teknisk undersökning som kommer att genomföras under söndagen.',
  journalist_id: journalist.id,
  premium: false,
  location: 'Sweden'
)
file = URI.open('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Fa%2FvAAm7V%2Fpolis-avlossade-varningsskott&psig=AOvVaw0VHNrBfmCB8IeyZXtAvPRm&ust=1603696562246000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNDigbmZz-wCFQAAAAAdAAAAABAD')
local_article_1.image.attach(io: file, filename: 'hoc.jpg')

local_article_2 = Article.create(
  title: 'UMEÅ: Brand i radhus – en till sjukhus',
  lead: 'En person hittades av rökdykare i en lägenhet och har förts till sjukhus med ambulans. Skadeläget är oklart.',
  category: 'politics',
  content: 'Öppna lågor slog ut ur en radhuslänga i Umeå kommun vid 05.30 under morgonen. Vid klockan 08 meddelar räddningstjänsten att branden är släckt, men att man är kvar och vädrar ut rök från radhuset. En person hittades av rökdykare i en lägenhet och har förts till sjukhus med ambulans. Skadeläget är oklart. En lägenhet bedöms totalförstörd och man går nu igenom resten av bostäderna. Samtliga boende har evakuerats och samlats i en kvarterslokal',
  journalist_id: journalist.id,
  premium: false,
  location: 'Sweden'
)
file = URI.open('https://www.google.com/url?sa=i&url=https%3A%2F%2Flokalanyheter.wordpress.com%2F2013%2F03%2F17%2Fvaldsam-brand-i-radhus-i-vallentuna%2F&psig=AOvVaw1f_K_pOWATyiaG32eGYWNu&ust=1603696688088000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPDyyfaZz-wCFQAAAAAdAAAAABAD')
local_article_2.image.attach(io: file, filename: 'hoc.jpg')

local_article_3 = Article.create(
  title: 'KIRUNA: Två gripna efter slagsmål på hemmafest',
  lead: 'När polisen kom till platsen påträffades två skadade personer – men ingen av dem ville ha vård.',
  category: 'politics',
  content: 'Under natten till söndagen larmades polisen till en adress i Kiruna. Enligt de initiala uppgifterna var det en hemmafest som spårat ut och det ska ha varit fullt slagsmål. Det skriver Norrbottenskuriren. När polisen kom till platsen påträffades två skadade personer – men ingen av dem ville ha vård. En man i 35-årsåldern är gripen misstänkt för misshandel. Och ytterligare en man greps misstänkt för grovt brott mot knivlagen samt dopingbrott.',
  journalist_id: journalist.id,
  premium: false,
  location: 'Sweden'
)
file = URI.open('https://files.alandstidningen.ax/sites/www.alandstidningen.ax/files/styles/detail_view/public/field/image/150117polis4_2.jpg?itok=kWZSWvCP')
local_article_3.image.attach(io: file, filename: 'hoc.jpg')

local_article_4 = Article.create(
  title: 'GÄVLE: Berusad man fast i skorsten – larmade inifrån',
  lead: 'En man i 30-årsåldern kontaktade själv SOS efter att han fastnat ungefär tio-femton meter ned i en skorsten i ett flerfamiljshus i centrala Gävle.',
  category: 'politics',
  content: 'En man i 30-årsåldern kontaktade själv SOS efter att han fastnat ungefär tio-femton meter ned i en skorsten i ett flerfamiljshus i centrala Gävle. Räddningstjänsten lyckades spåra mannens mobiltelefon och kunde strax innan klockan 05 fiska upp mannen genom att skicka ned ett sele. Mannen, som var berusad, har undersökts av ambulans på plats men uppges vara vid god vigör. Han lämnades över till sin flickvän “för vidare hantering” enligt polisens formulering. Varför mannen begett sig in i en skorsten är ännu oklart, men polisen misstänker att tilltaget kan kopplas samman med fylleri.',
  journalist_id: journalist.id,
  premium: false,
  location: 'Sweden'
)
file = URI.open('https://www.svtstatic.se/image/wide/992/15589089/1507984499?format=auto')
local_article_4.image.attach(io: file, filename: 'hoc.jpg')

local_article_5 = Article.create(
  title: 'US sets record for daily COVID-19 cases, surpassing the previous summer high',
  lead: 'The U.S. topped the one-day record for new coronavirus cases, according to Johns Hopkins University data, surpassing the previous summer high.',
  category: 'politics',
  content: 'At the height of the surge, on July 16, the U.S. saw more than 77,362 reported new cases of COVID-19. On Friday, the U.S. reached 83,757 new daily cases, according to by Johns Hopkins University. The news comes on the heels of a study by the University of Washington School of Medicine that projected more than 500,000 Americans could die by the end of February in part because of the nation’s current patchwork of COVID-19 mandates and the inconsistent use of masks to prevent virus spread ',
  journalist_id: journalist.id,
  premium: false,
  location: "International"
)
file = URI.open('https://imgs.aftonbladet-cdn.se/v2/images/7e4109ff-e4e9-4708-a9d0-4bae78d31405?fit=crop&h=733&q=50&w=1100&s=c4632b1ea1cd3126e238e049078623bd7c009074')
local_article_5.image.attach(io: file, filename: 'hoc.jpg')

local_article_6 = Article.create(
  title: 'Wildfire kills Colorado couple who wouldnt evacuate beloved home',
  lead: 'A Colorado couple, age 86 and 84, who did not evacuate from their home as it was threatened by the East Troublesome Fire has died, according to the Grand County sheriff. ',
  category: 'politics',
  content: 'The bodies of Lyle and Marilyn Hildeman were recovered Friday from their burned residence. The fire is one of the two largest wildfires in Colorado history, both of which are still burning in the state. In a video posted to Facebook, Grand County Sheriff Brett Schroetlin described the events around the couples decision to stay with their home outside Grand Lake, which he said had been in their family for many years.',
  journalist_id: journalist.id,
  premium: false,
  location: "International"
)
file = URI.open('https://media13.s-nbcnews.com/i/MSNBC/Components/Video/202010/f_mo_la_troublesome_fire_201021.jpg')
local_article_6.image.attach(io: file, filename: 'hoc.jpg')

local_article_7 = Article.create(
  title: 'How Biden and Trump compared in the final presidential debate',
  lead: 'The second and final debate between Republican President Donald Trump and Democratic candidate Joe Biden was more civil and organized than the first, but not without personal attacks and interruptions Kristen Welker of NBC News received praise for her assertiveness in handling the debate. But Trump again talked over Biden and the moderator and he exceeded his allotted speaking time more often than the former vice president. Both candidates used many of the same arguments and attacks from the first debate. Discussion focused on the COVID-19 pandemic, American families, national security, and race. Candidates spent less than 15 minutes on climate change and didnt cover leadership, one of the announced topics.',
  category: 'politics',
  content: 'The bodies of Lyle and Marilyn Hildeman were recovered Friday from their burned residence. The fire is one of the two largest wildfires in Colorado history, both of which are still burning in the state. In a video posted to Facebook, Grand County Sheriff Brett Schroetlin described the events around the couples decision to stay with their home outside Grand Lake, which he said had been in their family for many years.',
  journalist_id: journalist.id,
  premium: false,
  location: "International"
)
file = URI.open('https://img.112.international/original/2020/09/24/291594.jpg')
local_article_7.image.attach(io: file, filename: 'hoc.jpg')

local_article_8 = Article.create(
  title: 'Mark Kelly says its not him dressed as Adolf Hitler for Halloween in yearbook photo',
  lead: 'Mark Kelly, the Democratic candidate for the U.S. Senate, said he was falsely accused of dressing up for Halloween decades ago as Adolf Hitler,',
  category: 'politics',
  content: 'National File, a conservative news site, published images Friday asserting the image was Kelly, along with images from a yearbook reportedly dating to the mid-1980s. The site did not quote anyone verifying the images were of Kelly. Three former classmates of Kellys said the photos are not of him. Kellys campaign called the article false. Mark Baden, Kellys roommate at the Merchant Marine Academy, said the images are not of Kelly. ',
  journalist_id: journalist.id,
  premium: false,
  location: "International"
)
file = URI.open('https://www.gannett-cdn.com/presto/2020/08/05/PPHX/0ee418ed-8229-48bb-ba41-a6068ab9908e-markkelly_2.jpg')
local_article_8.image.attach(io: file, filename: 'hoc.jpg')
