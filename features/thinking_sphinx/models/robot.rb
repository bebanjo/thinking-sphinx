class Robot < ActiveRecord::Base
  self.primary_key = :internal_id
  set_sphinx_primary_key :alternate_primary_key
  
  define_index do
    indexes :name
  end
  
  def id
    internal_id
  end
end
