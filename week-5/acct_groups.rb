def acct_groups(names_array)
  names = names_array.count
  x = 0
  modulus = 0
  counter1 = 0
  counter2 = 0
  
    if names%5 == 0 || names%5 == 4 || names%5 == 3
      modulus = 5
      x = (names/5) + 1
    elsif names%4 == 0 || names%4 == 3
      modulus = 4
      x = (names/4) + 1
    elsif names%3 == 0
      modulus = 3
      x = (names/4) + 1
    else
      puts "Fewer than 3 Classmates"
    end
    
  groups = Array.new(x) {Array.new(modulus)}
      
  names_array.each do |name|
    groups[counter1][counter2] = name
    counter2 += 1
    if counter2 == modulus
      puts groups[counter1].to_s
      counter1 += 1
      counter2 = 0
    end
  end    
 puts groups[counter1].to_s
end

sea_lions = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]
acct_groups(sea_lions)