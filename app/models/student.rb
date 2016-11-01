require 'open-uri'

class Student < ApplicationRecord
  def self.all
    collection = []
    Unirest.get('https://frightening-flesh-58210.herokuapp.com/students.json').body.each do |student|
      collection << student
    end
    collection
  end

  def self.find(params_id) 
    Student.new(Unirest.get("https://frightening-flesh-58210.herokuapp.com/students/#{params_id}.json").body)
  end

  def skills(id)
    Unirest.get("https://frightening-flesh-58210.herokuapp.com/skills/#{id}.json").body
  end

  def capstones(id)
    Unirest.get("https://frightening-flesh-58210.herokuapp.com/capstones/#{id}.json").body
  end
end
