class Question
  include Mongoid::Document
  field :title, type: String
  field :answer_behaviour, type: String
  field :mandatory, type: Boolean

  belongs_to :questionbank
end
