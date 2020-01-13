class Follower
    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def join_cult(cult) #<-- function creates new BloodOath class. the input is the cult's "self.all", and self = self.all in this file.
        BloodOath.new(self, cult)
    end
 #----------------------------------------------------- #SHOULD HAVE for BOTH Cult/Follower files to "make the connection" <--
    def blood_oaths #<-- blood oath selects all cult members in bloodOath Class file
        BloodOath.all.select { |blood_oath| blood_oath.follower == self }
    end

    def cults #<-- pulls and maps out all cults from inside the blood oath area.
        blood_oaths.map {|blood_oath| blood_oath.cult } #uses previous function
    end

#--------------------------------------------------------------------
    def self.all
        @@all
    end
end