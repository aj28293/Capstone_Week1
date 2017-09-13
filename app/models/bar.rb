class Bar
  include Mongoid::Attributes::Dynamic
  include Mongoid::Document
  #include Mongoid::TimeStamps
  field :name, type: String
end
