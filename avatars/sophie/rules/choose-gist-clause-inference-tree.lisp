; Transduction tree for inferring additional facts from the gist-clause interpretations of user input
;

(READRULES '*clause-inference-tree*
'(
  1 (0 I 1 sleeping poorly because 0)
    2 (^me know.v (ans-to '(Why have I not been sleeping well ?))) (0 :ulf)
  1 (0 You 3 think I need chemotherapy 0)
    2 (^me know.v (ans-to '(Do I need chemotherapy ?))) (0 :ulf)
))