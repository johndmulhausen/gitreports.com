class User < ActiveRecord::Base
  has_and_belongs_to_many :repositories, -> { order 'name ASC' }, uniq: true
  has_and_belongs_to_many :organizations, -> { order 'name ASC' }, uniq: true

  def avatar_url(size = 96)
    'https://gravatar.com/avatar/' + gravatar_id + '?s=' + size.to_s
  end

  def github_path
    'https://github.com/' + username
  end
end
