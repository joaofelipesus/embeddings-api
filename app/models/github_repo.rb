class GithubRepo < ApplicationRecord
  has_neighbors :embedding
end
