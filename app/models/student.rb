class Student < ApplicationRecord
  def full_name
    "#{first_name} #{last_name}"
  end

  def array
    # eventually this will be an API call
    collection = []


  end
end
