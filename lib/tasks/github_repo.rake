# frozen_string_literal: true

namespace :github_repo do
  desc "Template task for GitHub repository operations"
  task generate_embeddings: :environment do
    embeddings = {
      'Rails': [1, 2, 3, 4, 5],
      'Django': [12, 3, 5, 9, 62],
      'CakePHP': [33, 46, 51, 63, 71],
      'Hanami': [1, 2, 3, 4, 6],
      'Phoenix': [59, 62, 71, 83, 92]
  }

    embeddings.each do |repo_name, embedding|
      github_repository = GithubRepo.find_by(name: repo_name)

      github_repository.update!(embedding:)
    end
  end

  desc "Print on terminal the closest github repository"
  task :closest_repository, [:repository_name] => :environment do |task, args|
    closest_repo = GithubRepo
      .find_by_name(args[:repository_name])
      .nearest_neighbors(:embedding, distance: "cosine")
      .first

    puts closest_repo.name
  end
end
