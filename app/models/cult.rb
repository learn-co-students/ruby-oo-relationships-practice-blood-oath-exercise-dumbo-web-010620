class Cult
    attr_accessor :name, :location, :slogan, :cult_population, :founding_year

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name #name of cult.
        @location = location #location in "string"
        @founding_year = founding_year # integer of year. 
        @slogan = slogan #funny thing to say
        @@all << self
    end

    def self.find_by_name(name) # <-- works. make other methods like this one.
        self.all.find {|cult| cult.name == name }
    end

    def self.find_by_location(location)
        self.all.select { |cult| cult.location == location }
    end

    def self.find_by_founding_year(year)
        self.all.select { |cult| cult.founding_year == year }
    end
    #----------------------------------------------------- #SHOULD HAVE for BOTH Cult/Follower files to "make the connection" <--
    def blood_oaths #<-- blood oath selects all cult members in bloodOath Class file
        BloodOath.all.select { |blood_oath| blood_oath.cult == self}
    end

    def followers #<-- pulls and maps out all followers inside the blood oath area.
        blood_oaths.map { |blood_oath| blood_oath.follower }
    end
    
    #--------------------------------------------------------------------

   def cult_population #returns an `Integer` that is the number of followers(follower class file?) in this cult
       followers.length
   end

    def self.all
        @@all
    end
end