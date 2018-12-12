# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# projects
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
blurb = '--'

names = names.each_with_index do |name, index|
  Project.create(name: name, location_url: location[index], github_url: github[index], image_url:image, blurb: blurb)
end

projects = Project.all


# testemonials = testemonial.create(name: '', connection: '', project: projects.first, content: '', rating: )

# # testemonials
# person = ['Freddie Scadding', 'Maria Sanches', 'Edward Ward', 'Luiza Pinto', 'Gustav Hoegen', 'Benjamin Baranger']
# connection = ['colleague', 'client', 'teacher']








