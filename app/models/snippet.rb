class Snippet < ActiveRecord::Base
  attr_accessible :code, :description, :language
  validates_presence_of :code, :description, :language

  LANGUAGES = %w[ruby bash css html haml scss erb]
end
