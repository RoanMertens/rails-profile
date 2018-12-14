# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# projects.

puts "Cleansing projects"
Project.destroy_all
puts "Cleansing testemonials"
Testemonial.destroy_all
puts "Preparing new seeds"

names = ['Buddy Up',
         'On Board',
         'Static about page',
         'Cocktail libary',
         'Portfolio',
         'Biomimic Studio',
         'Hangman',
         'Wuxia Reader']

location = ['https://rails-airbnb-friend-group.herokuapp.com/',
            'http://get-on-board.co/',
            'https://roanmertens.github.io/profile/',
            'https://calm-mesa-66178.herokuapp.com/',
            'https://rails-profile-rm.herokuapp.com/',
            'testlocation.com',
            'testlocation.com',
            'testlocation.com']

github = ['https://github.com/msanchezb/rails-airbnb-friend-group',
          'https://github.com/freddiescadding/on-board',
          'https://github.com/RoanMertens/profile',
          'https://github.com/RoanMertens/rails-mister-cocktail',
          'https://github.com/RoanMertens/rails-profile',
          'testlocation.com',
          'testlocation.com',
          'testlocation.com']

image = '--'
blurb = ['The platform is an e-commerce platform inspired by Airbnb made
         during the Le Wagon bootcamp. The product was made utilising the
         following languages: JavaScript, Ruby on Rails, Ajax, HTML and
         CSS whilst also working as a team on Github/Heroku.',
         'On Board is a platform for boardgame enthausiasts who are
         looking for others to do boardgames with. The product was made
         utilising the following languages: JavaScript, Ruby on Rails,
         Ajax, HTML and CSS whilst also working as a team on
         Github/Heroku.',
         'A static personal landingpage made using HTML and CSS.',
         'A cocktail mixing rails application made utilising the
         following languages: Ruby, Rails, HTML and CSS.',
         'The portfolio website you are currently on where I can be
         contacted and where I present my projects. The product was made
         utilising the following languages: JavaScript, Ruby on Rails,
         Ajax, HTML and CSS whilst also working as a team on
         Github/Heroku.',
         'It is the portfolio website of Biomimic Studio. Biomimic Studio is a
         is the animatronics company from Gustav Hoegen. Biomimic Studio worked
         on movies such as Jurassic World, Star Wars and Doctor Who.
         The website is made using html, CSS and JavaScript.',
         'It is the hangman game made in ruby using api\'s',
         'It is an online Chinese novel reading website made utilising
         the following languages: JavaScript, Ruby on Rails, Ajax, HTML and
         CSS']

names.each_with_index do |name, index|
  Project.create(name: name,
                 location_url: location[index],
                 github_url: github[index],
                 image_url: image,
                 blurb: blurb[index])
end

projects = Project.all

# testemonials
person = [{ connection: 'colleague', project: projects.first, content: 'amazing', rating: 8, name: 'Freddie Scadding' },
          { connection: 'colleague', project: projects.first, content: 'such a nice guy', rating: 7, name: 'Maria Sanches' },
          { connection: 'teacher', project: projects.second, content: 'hardworking', rating: 9, name: 'Edward Ward' },
          { connection: 'colleague', project: projects.second, content: 'friendly', rating: 10, name: 'Luiza Pinto' },
          { connection: 'client', project: projects[5], content: 'clear explanations', rating: 8, name: 'Gustav Hoegen' },
          { connection: 'teacher', project: projects.first, content: 'great student', rating: 7, name: 'Benjamin Baranger' }]

Testemonial.create(person)
