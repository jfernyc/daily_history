class DailyHistory::Scrape 
    

   

     def self.scrape_all 

     puts "SCRAPING Titles and Articles **********"
 	 doc = Nokogiri::HTML(open("https://www.timeanddate.com/on-this-day/"))   

     end 

      def self.scrape_title
      	doc = Nokogiri::HTML(open("https://www.timeanddate.com/on-this-day/"))
        title = doc.search(".otd-cat").first.text  #On this day date ex June 13 will appeaer 
      end 


      def self.scrape_headlines
      	 doc = Nokogiri::HTML(open("https://www.timeanddate.com/on-this-day/"))
        
         headlines = doc.search("li h3.otd-ttl")

         all_headlines = [] 
         headlines = doc.search("li h3.otd-ttl").each do |h3|
      	 all_headlines << h3.text

      	end 
      	 all_headlines[0..4]  #headlines for each first few history stories
      
      end 
     end 

   
   def self.scrape_summary
     doc = Nokogiri::HTML(open("https://www.timeanddate.com/on-this-day/"))
     summary = doc.search(".otd-row").first.css("p").first.text  #summary of the headlines

   end 
