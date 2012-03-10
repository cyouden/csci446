class Troll
  
  attr_accessor :ugliness, :smelliness, :strength, :grunt
  
  def initialize()
    @grunt = "UNGAH"
  end
  
  def speak()
    (1..42).each do
      puts @grunt
    end
  end
  
  def reverse()
    puts @grunt.reverse
  end
  
  def propogate()
    eegah = Troll.new()
    eegah.grunt = "eegah"
    return eegah
  end
  
end