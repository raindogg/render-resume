class Student < ApplicationRecord
  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all 
    # eventually this will be an API call
    collection = []
    collection << {first_name: "Hannibal", 
                   last_name: "Lecter", 
                   email: "hlecter@gmail.com",
                   phone: "323 523 5235",
                   bio: "A brilliant cannibal", 
                   linked_in: "linkedin/hl",
                   twitter: "@hannibalthecannibal",
                   blog: "humanfoodie.wordpress.com",
                   resume_link: "www.resume.com",
                   github: "hanniabl.github",
                   photo: "http://bit.ly/2fk0EcJ",
                   id: "1"}

    collection << {first_name: "Jason", 
                   last_name: "Voorhees", 
                   email: "jason@campchrystallake.com",
                   phone: "323 523 5335",
                   bio: "A deranged serial killer", 
                   linked_in: "linkedin/hv",
                   twitter: "@psychoKiller",
                   blog: "I<3myMom.wordpress.com",
                   resume_link: "www.resume.com",
                   github: "jvoorhees.github",
                   photo: "http://bit.ly/2fk3EWg",
                   id: "2"}
  end
end
