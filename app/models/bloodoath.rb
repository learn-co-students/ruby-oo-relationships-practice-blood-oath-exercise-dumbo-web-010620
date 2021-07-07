class BloodOath
    attr_accessor :follower, :cult, :initiation_date

    @@all = []

    def initialize(cult, follower) #<- gets connected via cult and follower through this initiation. needs the class instance.
        @cult = cult
        @follower = follower
        @initiation_date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}."
        @@all << self
    end

    def self.all
        @@all
    end
end