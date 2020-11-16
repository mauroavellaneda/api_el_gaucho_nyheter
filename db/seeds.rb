Article.destroy_all
User.destroy_all

journalist = User.create(email: "journalist@mail.com", role: "journalist", password: "password")
registered = User.create(email: "registered@mail.com", role: "registered", password: "password")
subscriber = User.create(email: "subscriber@mail.com", role: "subscriber", password: "password")

sports_article_1 = Article.create(

  title: "Six Nations 2020: Fixtures, title permutations and catch-up as tournament returns",
  lead: "The longest Six Nations in history will finally reach its conclusion this month, 273 days after the tournament began on 1 February.",
  category: "sports",
  content: "Both the men's and women's 2020 competitions were postponed in March because of the Covid-19 outbreak, with four teams still chasing the title in the men's tournament and England dominating the women's championship.",
  journalist_id: journalist.id,
  premium: false

)
file = URI.open('https://d.ibtimes.co.uk/en/full/1536039/rugby-sevens-scrum.jpg')
sports_article_1.image.attach(io: file, filename: 'scrum.jpg')

sports_article_2 = Article.create(

  title: "Six Nations 2020: Fixtures, title permutations and catch-up as tournament returns",
  lead: "The longest Six Nations in history will finally reach its conclusion this month, 273 days after the tournament began on 1 February.",
  category: "sports",
  content: "Both the men's and women's 2020 competitions were postponed in March because of the Covid-19 outbreak, with four teams still chasing the title in the men's tournament and England dominating the women's championship.",
  journalist_id: journalist.id,
  premium: false

)
file = URI.open('https://culturalawareness.com/wp-content/uploads/2016/04/Culture-Shock-Medium1.jpg')
sports_article_2.image.attach(io: file, filename: 'food.jpg')

sports_article_3 = Article.create(

  title: "Six Nations 2020: Fixtures, title permutations and catch-up as tournament returns",
  lead: "The longest Six Nations in history will finally reach its conclusion this month, 273 days after the tournament began on 1 February.",
  category: "politics",
  content: "Both the men's and women's 2020 competitions were postponed in March because of the Covid-19 outbreak, with four teams still chasing the title in the men's tournament and England dominating the women's championship.",
  journalist_id: journalist.id,
  premium: false

)
file = URI.open('https://tse3.mm.bing.net/th?id=OIP.E2BtwfugC4oYSNq04eSILwHaEK&pid=Api&P=0&w=308&h=174')
sports_article_3.image.attach(io: file, filename: 'scrum.jpg')

sports_article_4 = Article.create(

  title: "Six Nations 2020: Fixtures, title permutations and catch-up as tournament returns",
  lead: "The longest Six Nations in history will finally reach its conclusion this month, 273 days after the tournament began on 1 February.",
  category: "politics",
  content: "Both the men's and women's 2020 competitions were postponed in March because of the Covid-19 outbreak, with four teams still chasing the title in the men's tournament and England dominating the women's championship.",
  journalist_id: journalist.id,
  premium: false

)
file = URI.open('https://tse3.mm.bing.net/th?id=OIP.USS0KcRqomch-HIGU8Gh8wHaEK&pid=Api&P=0&w=355&h=201')
sports_article_4.image.attach(io: file, filename: 'hoc.jpg')

sports_article_5 = Article.create(

  title: "Protests in Naples over possible lockdown",
  lead: "Infections are rising across the whole of Italy but the Italian prime minister has said he wants to avoid a new national lockdown.",
  category: "politics",
  content: "Naples and the surrounding region already have a curfew in place and many schools are shut but Vincenzo De Luca, head of Campania, said on Facebook: 'We need to shut everything down for a month, for 40 days.",
  journalist_id: journalist.id,
  premium: false

)
file = URI.open('https://tse2.mm.bing.net/th?id=OIP.hBwUc6d0KlIz1Rsi5CDSywHaE8&pid=Api&P=0&w=278&h=186')
sports_article_5.image.attach(io: file, filename: 'napoles.jpg')

sports_article_6 = Article.create(

  title: "Six Nations 2020: Fixtures, title permutations and catch-up as tournament returns",
  lead: "The longest Six Nations in history will finally reach its conclusion this month, 273 days after the tournament began on 1 February.",
  category: "politics",
  content: "Both the men's and women's 2020 competitions were postponed in March because of the Covid-19 outbreak, with four teams still chasing the title in the men's tournament and England dominating the women's championship.",
  journalist_id: journalist.id,
  premium: false

)
file = URI.open('https://tse3.mm.bing.net/th?id=OIP.USS0KcRqomch-HIGU8Gh8wHaEK&pid=Api&P=0&w=355&h=201')
sports_article_6.image.attach(io: file, filename: 'hoc.jpg')

sports_article_7 = Article.create(

  title: "Coronavirus: Macron announces curfews in France to halt spread of Covid-19",
  lead: "France's president has announced curfews in Paris and eight other cities in France to be imposed from Saturday.",
  category: "politics",
  content: "Emmanuel Macron said people must stay indoors from 9pm to 6am to help control the spread of coronavirus.",
  journalist_id: journalist.id,
  premium: true

)
file = URI.open('https://www.jta.org/wp-content/uploads/2017/05/macron-3.jpg')
sports_article_7.image.attach(io: file, filename: 'macron.jpg')

sports_article_8 = Article.create(

  title: "Six Nations 2020: Fixtures, title permutations and catch-up as tournament returns",
  lead: "The longest Six Nations in history will finally reach its conclusion this month, 273 days after the tournament began on 1 February.",
  category: "politics",
  content: "Both the men's and women's 2020 competitions were postponed in March because of the Covid-19 outbreak, with four teams still chasing the title in the men's tournament and England dominating the women's championship.",
  journalist_id: journalist.id,
  premium: true

)
file = URI.open('https://tse3.mm.bing.net/th?id=OIP.USS0KcRqomch-HIGU8Gh8wHaEK&pid=Api&P=0&w=355&h=201')
sports_article_8.image.attach(io: file, filename: 'hoc.jpg')

sports_article_4 = Article.create(

  title: "Six Nations 2020: Fixtures, title permutations and catch-up as tournament returns",
  lead: "The longest Six Nations in history will finally reach its conclusion this month, 273 days after the tournament began on 1 February.",
  category: "politics",
  content: "Both the men's and women's 2020 competitions were postponed in March because of the Covid-19 outbreak, with four teams still chasing the title in the men's tournament and England dominating the women's championship.",
  journalist_id: journalist.id,
  premium: false

)
file = URI.open('https://tse3.mm.bing.net/th?id=OIP.USS0KcRqomch-HIGU8Gh8wHaEK&pid=Api&P=0&w=355&h=201')
sports_article_4.image.attach(io: file, filename: 'hoc.jpg')


