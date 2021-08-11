;

(READRULES '*feedback-input*
; TBC
'(
  1 (bye)
    2 ((Goodbye \.)) (0 :gist)

  ;; 1 (0 [SEP] 0)
  ;;   2 ((An input was found \: 1 and 3 \.)) (0 :gist)

  ; Temporary example for testing
  1 (0 results 0 NEG understand 0 explain 0 what they mean [SEP] 0)
    2 (0 [SEP] 0 WH_ worries you the most 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 ((question-suggestion \: what worries you the most ?)) (0 :gist)

  ; Top-level nodes match SOPHIE's responses where we previously had opportunity tags
  1 (WH_ does this mean for my future [SEP] 0)
    ; Second-level nodes detect whether user asked an open-ended question or not
    2 (0 [SEP] 0 WH_ worries you the most 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    ; If doctor did not ask an open-ended question, gist-clause stores suggestion
    2 ((question-suggestion \: what worries you the most ?)) (0 :gist)
  1 (Why have I not been sleeping well [SEP] 0)
    2 (0 [SEP] 0 Were you nervous for this appointment 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 What happens when you try to sleep 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 ((question-suggestion \: Were you nervous about this meeting ? Can you elaborate on your sleeping problems ?)) (0 :gist)
  1 (What is 1 prognosis [SEP] 0)
    2 (0 [SEP] 0 Do you understand your prognosis 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 How much information do you want 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 What scares you about your prognosis 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 How do your feel about your prognosis 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 ((question-suggestion \: Do you understand your prognosis ? How much information do you want about your prognosis ? What concerns you the most for your future ?)) (0 :gist)
  1 (Can I trust your prognosis [SEP] 0) 
    2 (0 [SEP] 0 Do you understand your prognosis 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 How do you feel about your prognosis 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 ((question-suggestion \: Do you understand your prognosis ? What concerns you the most for your future ?)) (0 :gist)
  1 (What are my options for treatment [SEP] 0)
    2 (0 [SEP] 0 What scares you about your condition 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 How are you feeling about your condition 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 What are your treatment goals 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 ((question-suggestion \: What concerns you the most for your future ? What are your treatment goals ?)) (0 :gist)
  ; New Addition
  1 (I feel mildly depressed [SEP] 0)
    2 (0 [SEP] 0 What scares you about your condition 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 How are you feeling about your condition 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 Were you nervous for this appointment 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 ((question-suggestion \: What concerns you the most for your future ? What scares you about your condition ? Were you nervous about this meeting ?)) (0 :gist)
  1 (I feel nervous about my future [SEP] 0)
    2 (0 [SEP] 0 What scares you about your condition 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 How are you feeling about your condition 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 Were you nervous for this appointment 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 ((question-suggestion \: What concerns you the most for your future ? What scares you about your condition ? Were you nervous about this meeting ?)) (0 :gist)
  1 (I am sleeping poorly because of my mental health [SEP] 0) 
    2 (0 [SEP] 0 What scares you about your condition 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 How are you feeling about your condition 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 Were you nervous for this appointment 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 ((question-suggestion \: What concerns you the most for your future ? What scares you about your condition ? Were you nervous about this meeting ?)) (0 :gist)


  ; Tentative - How does chemotherapy work? What should I tell my family? (Can I outlive your prognosis if I have healthy habits?) (Can I outlive your prognosis if I am healthy now?) (Can I outlive your prognosis until the graduation of my grandson?) 
  1 (What are my treatment options if I do not do chemotherapy [SEP] 0)
    2 (0 [SEP] 0 What scares you about your condition 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 How are you feeling about your condition 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 (0 [SEP] 0 What are your treatment goals 0)
      3 ((The doctor asked an open ended question \.)) (0 :gist)
    2 ((question-suggestion \: What concerns you the most for your future ? What are your treatment goals ?)) (0 :gist)
  

  1 (0)
    2 ((NIL Gist \: nothing found for input \.)) (0 :gist)

)) ; END *feedback-input*