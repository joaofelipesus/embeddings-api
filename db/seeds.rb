GithubRepo.destroy_all

GithubRepo.create!(name: 'Rails', url: 'https://github.com/rails/rails', description: 'Ruby on Rails web application framework', languages: %w[Ruby])
GithubRepo.create!(name: 'Django', url: 'https://github.com/django/django', description: 'Python web framework for perfectionists with deadlines', languages: %w[Python])
GithubRepo.create!(name: 'CakePHP', url: 'https://github.com/cakephp/cakephp', description: 'PHP rapid development framework', languages: %w[PHP])
GithubRepo.create!(name: 'Hanami', url: 'https://github.com/hanami/hanami', description: 'Ruby web framework with a focus on object-oriented design', languages: %w[Ruby])
GithubRepo.create!(name: 'Phoenix', url: 'https://github.com/phoenixframework/phoenix', description: 'Elixir web framework for building maintainable applications', languages: %w[Elixir])
