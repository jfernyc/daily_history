class DailyHistory::History 

	def self.today 
   #I should return a bunch of instances of history of the day
    puts "Today in History:"
     	puts <<-DOC.gsub /^\s*/, ''
        1.List of history
        2.From most recent 1st to oldest last 
        DOC

	end 


end 