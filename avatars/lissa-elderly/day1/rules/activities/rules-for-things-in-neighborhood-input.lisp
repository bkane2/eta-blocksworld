;; (what kind of things do you like to do in your neighborhood ?)
;;	(things-in-neighborhood)
;;		from-things-in-neighborhood-input
;;			(0 I like to 4 in neighborhood 0) (0 I do not like to 4 in neighborhood 0)
;;			gist-question:(3 what 4 you like 4 neighborhood 0)

(MAPC 'ATTACHFEAT
'(
   (shop shops)
   (restaurant restaurants)
	(walk walking)
))
    

(READRULES '*things-in-neighborhood-input*
'(
   ; Reciprocal questions
   1 (0 what 2 you 0 ?)
      2 (what kind of things you like to do in your neighborhood ?) (0 :gist)
   1 (0 how 2 you 0 ?)
      2 (what kind of things you like to do in your neighborhood ?) (0 :gist)
	1 (0 what 4 you 3 neighborhood  0 ?)
      2 (what kind of things you like to do in your neighborhood ?) (0 :gist)

   ; Specific answer
   1 (0 NEG 3 fan of movies 0) 
      2 ((I do not like to go to movies in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 NEG 2 like 2 movies 0) 
      2 ((I do not like to go to movies in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 NEG 3 fan of coffee shop 0) 
      2 ((I do not like to go to coffee shop in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 NEG 2 like 2 coffee shop 0) 
      2 ((I do not like to go to coffee shop in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 library 0) 
      2 ((I like to go to library in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 coffee shop 0) 
      2 ((I like to go to coffee shop in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 movies 0) 
      2 ((I like to go to movies in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 music 0) 
      2 ((I like to go to music activities in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 book club 0) 
      2 ((I like to go to book club in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 	
   1 (0 garden 0) 
      2 ((I like to do gardening in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 	 	
   1 (0 sport 0) 
      2 ((I like to do sport in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 golf 0) 
      2 ((I like to play golf in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 water-related 0) 
      2 ((I like to do water-related activities in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 volunteer 0) 
      2 ((I like to do volunteering in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 exercise 0) 
      2 ((I like to do exercise in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 dance 0) 
      2 ((I like to go to dance in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 friend 0) 
      2 ((I like to be with friends in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 restaurant 0) 
      2 ((I like to go to restaurant in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 walk 2 pet 0) 
      2 ((I like to walk my pet in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 walk 1 around 0) 
      2 ((I like to walk around in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 walk 2 spouse 0) 
      2 ((I like to walk with my 4 in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 		
   1 (0 walk 2 friend 0) 
      2 ((I like to walk with my 4 in neighborhood \.)  (things-in-neighborhood)) (0 :gist) 	
      	
   1 (0)
      2 ((NIL Gist \: nothing found for what I like to do in neighborhood \.)  (things-in-neighborhood)) (0 :gist)
))
       

(READRULES '*reaction-to-things-in-neighborhood-input*
'(
   1 (0 not like 4 movies 0)
      2 (You see\. You are not into movies either but you go to theater every now and then\.) (100 :out)
   1 (0 not like 4 coffee shop 0)
      2 (Oh\, you see\. You love coffee shops though\. Especially during winter when it is snowy outside\. It feels really cozy there\.) (100 :out)
   1 (0 exercise 0)
      2 (It\'s great that I try to stay active\.) (100 :out)
   1 (0 gardening 0)
      2 (You are not into gardening but you know that it makes you feel calm\.) (100 :out)
   1 (0 water-related 0)
      2 (That sounds cool\. You can\'t go in the water for obvious reasons\, but it looks fun\.) (100 :out)
   1 (0 movies 0)
      2 (That\'s nice\. You like the movies too\.) (100 :out)
   1 (0 music 0)
      2 (That\'s great\! It\'s always fun to see live music\.) (100 :out)
   1 (0 sport 0)
      2 (That sounds fun\. It\'s good to stay active\.) (100 :out)
   1 (0 book 0)
      2 (Book clubs are fun\. I like talking about books with people\.) (100 :out)
   1 (0 library 0)
      2 (You like going to the library\, too\. You can always find an interesting book to read\.) (100 :out)
   1 (0 dance 0)
      2 (You have never been a good dancer but you love wathcing it\.) (100 :out)
   1 (0 friends 0)
      2 (It\'s nice to be with friends\.) (100 :out)
   1 (0 volunteering 0)
      2 (Volunteering is nice\. It\'s good to give back to the community\.) (100 :out)
   1 (0 coffee 0)
      2 (Coffee shops are nice\.) (100 :out)
   1 (0 golf 0)
      2 (Oh\, it must be great that you have a golf course in your neighborhood\!) (100 :out)
   1 (0 restaurant 0)
      2 (Oh\, restaurants are great\. Though I should be careful about my eating habit if I go out a lot for eating\!) (100 :out)
   1 (0 walk 0)
      2 (It is nice to do some activity\! I also get to see neighbors and chit chat with them\. You would love that\.) (100 :out)
      
   1 (0 NIL Gist 0)
      2 (You used to go to coffee shops a lot so you could get nice coffee\. However\, your doctor recently hinted you about getting too much caffeine\.) (100 :out)
))