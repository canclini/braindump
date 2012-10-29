class Snippet < ActiveRecord::Base
  acts_as_taggable
  attr_accessible :code, :description, :language, :tag_list
  validates_presence_of :code, :description, :language

  LANGUAGES = %w[ruby bash css html haml scss erb]

  searchable do
    text :code, :description
  end
end
