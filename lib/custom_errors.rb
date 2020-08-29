# /////////////////////////////////
class Person_version_1
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    person.partner = self
  end
end
# ////////////////
beyonce = Person_version_1.new("Beyonce")
# beyonce.get_married("Jay-Z")
# puts beyonce.name
# /////////////////////////////////
class Person_version_2
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person_version_2 
      begin                         #=> rescue code 
        raise PartnerError          #=> rescue code 
      rescue PartnerError => error  #=> rescue code
        puts error.message 
      end                           #=> rescue code
    else 
      person.partner = self 
    end 
  end

a nonsensical line of code that breaks ruby can be "rescued"
rescue
puts "o man, that's some crappy code!"

  class PartnerError < StandardError     #=> Put the code for the custome error here
    def message 
      "You must give the <<get_married>> method an argument of an instance of the Person_version_2 class!"
    end 
  end 
end
# /////////////////////////////////
morlord = Person_version_2.new("Morlord")
morlord.get_married("Yoshihima")
morlord.name