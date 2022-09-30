module DogsHelper

  def estimated_age born
    age = Date.today - born
    age
  end

end
