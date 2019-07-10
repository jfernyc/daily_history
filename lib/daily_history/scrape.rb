class DailyHistory::Scrape 
    
  
   

     def self.scrape_all 
        doc = Nokogiri::HTML(open("https://www.timeanddate.com/on-this-day/"))    

     end 

      def self.scrape_title
      	doc = Nokogiri::HTML(open("https://www.timeanddate.com/on-this-day/"))
        title = doc.search(".otd-cat").first.text   
      end 

       def self.scrape_summary
         doc = Nokogiri::HTML(open("https://www.timeanddate.com/on-this-day/"))
          
         summary = doc.search("li  p")

         all_summaries = [] 
         summary.each do |sum|
         all_summaries << sum.text 

      end 
     all_summaries[0..4]
  end 


      def self.scrape_headlines
      	 doc = Nokogiri::HTML(open("https://www.timeanddate.com/on-this-day/"))
        
         headlines = doc.search("li h3.otd-ttl")

         all_headlines = [] 
         headlines.each do |h3|
      	 all_headlines << h3.text

      	end 
      	 all_headlines[0..4]  #headlines for each first few history stories
      
      end 
     end 

   
