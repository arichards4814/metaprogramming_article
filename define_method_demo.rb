class Shoe
    attr_accessor :title, :brand, :size, :shoelaces
 
    def initialize(title, brand, size, shoelaces)
        @title = title
        @brand = brand
        @size = size
        @shoelaces = shoelaces
    end

    def self.create_method(title)
        define_method("#{title}_details") do |arg|
            puts "This shoe is a #{self.brand} size #{self.size} and it is #{self.shoelaces} that it has shoelaces."
        end
    end
    
end


n = Shoe.new("nikes", "nike","12", true)

c = Shoe.new("crocs","croc","10", false)

s = Shoe.new("sandals", "American Eagle", "11", false)

Shoe.create_method(n.title)
pp n.nikes_details("test")

