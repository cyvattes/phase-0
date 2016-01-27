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



=begin
What was the most interesting and most difficult part of this challenge?
  - This challenge made my brain hurt, and made me feel incrediply clever when I got it working. The hardest part of this challenge was figuring out how to iterate over the parts of a multidimensional array.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
  - I feel like I'm getting better at breaking my coding down into smaller parts. However, I had to go back to pseudocoding after I got half-finished with my code, as I ran into problems that I hadn't thought of before.
Was your approach for automating this task a good solution? What could have made it even better?
  - I feel like I came up with a good and efficient solution to solving this problem. I feel that maybe learning about different methods might have helped, but that's speculating about things I don't know yet.
What data structure did you decide to store the accountability groups in and why?
  - I decided to go with a multidimentional array (2 dimensions), which allowed me to break each accountability group into an array of 5 students, each array held within a master array. I felt (and still feel) that this is the best way to arrange the names into groups.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  - While I didn't learn any new methods for this project, it was my first time using the Array.new class to make a new array. I did this to make an array within an array, while using variables to set their length. Refactoring helped make the code much neater at the end, but I did a lot of this as I went because it ended up meaning a lot less typing when I was determining how big each array should be.

=end