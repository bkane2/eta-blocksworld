(eval-when (load eval)
  (MAPC 'ATTACHFEAT
  '((cleaning-verb dusting dust Sweeping sweep Vacuuming vacuum wipe wiping wash washing clean cleaning mop mopping)
    (cleaning-n dishes furniture bedding car cars floors window windows pet carpet bathrooms refrigerator blind blinds 
      curtain carpet garage oven pillow pillows quilt clothes sheets towels towel floor)
    (arrange arranging)
    (pet pets cat cats dog dogs)
    (Feeding pets)
    (Doing laundry)
    (Preparing prepare meals cooking)
    (Watering water plants)
    (Mowing mow the lawn)
    (weeding weed garden)
    (Bathing bath pets)
    (pruning prune cut cutting trees shrubs)
  ))
   

;; What household chores did you work on today or yesterday?
;; gist: What household chores did you work on today ?)
;; (0 household chore 4 today 0)   ;; the household chore i did today was blah
;; householdChores-today
;; (3 what 3 household chore 4 today 3)
	
(READRULES '*specific-answer-from-householdChores-today-input*
  '(1 (0 cleaning-verb cleaning-noun 0) 
        2 ((2 3 is the household chore that I worked on today \.)  (householdChores-today)) (0 :gist)
     1 (0 feeding pets 0) 
        2 ((Feeding 3 is the household chore that I worked on today \.)  (householdChores-today)) (0 :gist)
     1 (0 doing laundry 0) 
        2 ((2 3 is the household chore that I worked on today \.)  (householdChores-today)) (0 :gist)
     1 (0 preparing meals 0) 
        2 ((2 3 is the household chore that I worked on today \.)  (householdChores-today)) (0 :gist)
     1 (0 watering plants 0) 
        2 ((2 3 is the household chore that I worked on today \.)  (householdChores-today)) (0 :gist)
     1 (0 weeding garden 0) 
        2 ((2 3 is the household chore that I worked on today \.)  (householdChores-today)) (0 :gist)
     1 (0 bathing pets 0) 
        2 ((2 3 is the household chore that I worked on today \.)  (householdChores-today)) (0 :gist)
     1 (0 pruning trees 0) 
        2 ((2 3 is the household chore that I worked on today \.)  (householdChores-today)) (0 :gist)
     1 (0 cooking 0) 
        2 ((2 is the household chore that I worked on today \.)  (householdChores-today)) (0 :gist)
     1 (0 arranging 0) 
        2 ((2 is the household chore that I worked on today \.)  (householdChores-today)) (0 :gist)
     1 (0 laundry 0) 
        2 ((Doing 2 is the household chore that I worked on today \.)  (householdChores-today)) (0 :gist)
     1 (0 cleaning-verb 0) 
        2 ((2 is the household chore that I worked on today \.)  (householdChores-today)) (0 :gist)
     1 (0)
       2 ((NIL Gist \: nothing found for household chore I did today \.) (householdChores-today)) (0 :gist)

		))
       
       
 (READRULES '*thematic-answer-from-householdChores-today-input*
  '(

  ))

 (READRULES '*unbidden-answer-from-householdChores-today-input*
  '(
  ))
		
 (READRULES '*question-from-householdChores-today-input*
  '(1 (0 what 4 you 0)
        2 (What household chores did you work on today ?) (0 :gist)
      1 (0 how 2 you 2 chores 0)
        2 (How can you do chores ?) (0 :gist)
      1 (0 wh_ 4 chore 2 work 0)
        2 (What household chores did you work on today ?) (0 :gist)
  ))

(READRULES '*reaction-to-householdChores-today-input*
  '( 1 (0 cleaning-verb 1 cleaning-noun 0) ;; e.g. wash the floor
        2 (0 cleaning-verb-pres 1 cleaning-noun 0)
          3 (0 wipe 1 cleaning-noun 0)
            4 (wiping 4 is essential for keeping your place neat\.) (100 :out)
          3 (0 dust 1 cleaning-noun 0)
            4 (Dusting 4 is essential for keeping your place neat\.) (100 :out)
          3 (0 dust 1 cleaning-noun 0)
            4 (Dusting 4 is essential for keeping your place neat\.) (100 :out)
          3 (0 sweep 1 cleaning-noun 0)
            4 (Sweeping 4 is essential for keeping your place neat\.) (100 :out)
          3 (0 vacuum 1 cleaning-noun 0)
            4 (Vacuuming 4 is essential for keeping your place neat\.) (100 :out)
          3 (0 wash 1 cleaning-noun 0)
            4 (Washing 4 is essential for keeping your place neat\.) (100 :out)
          3 (0 clean 1 cleaning-noun 0)
            4 (Cleaning 4 is essential for keeping your place neat\.) (100 :out)
          3 (0 mop 1 cleaning-noun 0)
            4 (Mopping 4 is essential for keeping your place neat\.) (100 :out)
       2 (0 cleaning-verb-prog 1 cleaning-noun 0)
         3 (2 4 is essential for keeping your place neat\.) (100 :out)
     1 (0 feeding pets 0) 
        2 (You just fed your British Shorthair yesterday\.) (100 :out)
     1 (0 doing laundry 0) 
        2 (You usually do your laundry every three to four days\.) (100 :out)
     1 (0 preparing meals 0) 
        2 (Preparing meals can be time consuming but you enjoy it\.) (100 :out)
     1 (0 watering plants 0) 
        2 (I remind you that you need to water and weed your plants and garden today\.) (100 :out)
     1 (0 weeding garden 0) 
        2 (I remind you that you need to water and weed your plants and garden today\.) (100 :out)
     1 (0 bathing pets 0) 
        2 (Your British Shorthair dislikes bathing very much\.) (100 :out)
     1 (0 pruning trees 0) 
        2 (You haven\'t pruned your trees for sometime\. Maybe you should do that sometime\.) (100 :out)
     1 (0 cooking 0) 
        2 (Preparing meals can be time consuming but you enjoy it\.) (100 :out)
     1 (0 arranging 0) 
        2 (You enjoy putting things in their places regularly\. It is kind of satisfying\.) (100 :out)
     1 (0 laundry 0) 
        2 (You usually do your laundry every three to four days\.) (100 :out)
     1 (0 cleaning-verb 0) 
        2 (0 cleaning-verb-pres 0)
          3 (0 wipe 0)
            4 (wiping is essential for keeping your place neat\.) (100 :out)
          3 (0 dust 0)
            4 (Dusting is essential for keeping your place neat\.) (100 :out)
          3 (0 dust 0)
            4 (Dusting is essential for keeping your place neat\.) (100 :out)
          3 (0 sweep 0)
            4 (Sweeping is essential for keeping your place neat\.) (100 :out)
          3 (0 vacuum 0)
            4 (Vacuuming is essential for keeping your place neat\.) (100 :out)
          3 (0 wash 0)
            4 (Washing is essential for keeping your place neat\.) (100 :out)
          3 (0 clean 0)
            4 (Cleaning is essential for keeping your place neat\.) (100 :out)
          3 (0 mop 0)
            4 (Mopping is essential for keeping your place neat\.) (100 :out)
       2 (0 cleaning-verb-prog 0)
         3 (2 is essential for keeping your place neat\.) (100 :out)
    1 (0 NIL Gist 0)
	  2 (It\'s always a good feeling to be done with chores for the day\.) (100 :out)
  ))
); end of eval-when