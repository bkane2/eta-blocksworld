; The rules defined in this file are used to generate a specific response for a topic, in the context of the
; user's previous gist-clause (the specific rule tree is initially chosen based on the gist-clause of Eta's response).
;
; All trees defined in this file should be named using format *response-tree-<topic>*.


(READRULES '*response-tree-treatment-options*
; (What are my options for treatment 1)
; (Do you think experimental therapies will help 1)
'(
  1 (0 Maintaining good quality of life is a treatment option 0)
    2 (Keeping a high quality of life for the rest of my time is the most important thing to me right now \.
       What\'s the best option for making sure this is possible ?) (0 :out)

  1 (0 Do I want to try to fight the cancer 0)
    2 (My main priority is just to be comfortable for the time I have left\, but I\'m willing
       to try to fight the cancer if you think it will help \.) (100 :out)
    2 (I want to try to fight it if you think it would be best\, but my main priority is just
       being comfortable \.) (0 :out)
      
  1 (0 What are my treatment goals 0)
    2 (I think my priority is to be comfortable for the time I have left\, and to be able to enjoy my remaining
       years with my family \. However\, I\'m open to try fighting the cancer if you think I have a chance \.) (100 :out)
    2 (I really just want to be as comfortable as possible for the time I have left \.) (0 :out)

  1 (0 You need more tests before talking about treatment options 0)
    2 (I understand that some more tests might be necessary before deciding on treatment \. I still want to hear
       about my potential options\, though \.) (0 :out)

  1 (0 What do I understand about my treatment options 0)
    2 (I don\'t really understand my treatment options very well \. Could you explain them a bit more ?) (100 :out)
    2 (Could you explain the options that I have\, again ?) (0 :out)

  1 (0 NIL GIST 0 treatment option 0)
    2 (Sorry\, I didn\'t really understand \. Could you please repeat my treatment options one more time ?) (0 :out)

  1 (0)
    2 (I want to talk a bit about my treatment options now \. What are my choices at this point ?) (0 :out)

)) ; END *response-tree-treatment-options*

(READRULES '*response-tree-experimental-therapies*
'(
  ; (Do you think experimental therapies will help 1)

  1 (0 Do I have a question about my treatment options 0)
      2 (Before I was diagnosed\, I used to hear about experimental treatments on the news \. Some of them sounded promising \. Do you know of any treatments 
        that would be right for me ?) (0 :out)
  
  1 (0 The prognosis is that I cannot be cured 0)
    2 (That\'s hard to hear \. But are you certain there\'s no cure ? Sometimes I hear about experimental treatments and such \. Do you think any of those would be 
       right for me ?) (0 :out)

  1 (0)
    2 (Do you know if there\'s any experimental therapy out there that could help me ?) (0 :out)
))

(READRULES '*response-tree-comfort-care*
; (How does comfort care work 1)
'(
  1 (0 What are my treatment goals 0)
    2 (At this point\, I\'d just like to keep my pain under control and spend time with my family\. Is there any treatment that
       can allow me to do that ?) (0 :out)

  1 (0 You do not think I need chemotherapy because I should get comfort care instead 0)
    2 (I think holding off on chemotherapy for now makes sense\, given that my priority is just to be comfortable \.
       So you think I should get comfort care\, then ?) (0 :out)

  1 (0 Comfort care is a treatment option 0)
    2 (Comfort care sounds good to me \. What I want is to try to get my life back to normal as much as possible \.
       You know\, spend time with my family\. What do I have to do for that ?) (0 :out)
  1 (0 Have I considered comfort care 0)
    2 (I haven\'t thought about it\, but it sounds like what I really need \. A way to maintain quality of life
       during the time I have left \. Can you tell me about it ?) (0 :out)

  1 (0 Do I understand how comfort care works 0)
    2 (I\'ve heard of hospice before\, but I don\'t really understand what comfort care means \. Can you explain it ?) (100 :out)
    2 (I don\'t really have a good idea of what comfort care means \. What is it ?) (0 :out)

  1 (0 Do I have a question about comfort care 0)
    2 (Comfort care is new to me \. I\'m curious as to how it works \. Will I be in pain ?) (0 :out)
    2 (I don\'t know too much about comfort care \. Is it painful ?) (0 :out)



  1 (0)
    2 (You know\, my main priority is to be comfortable at this point \. What would be the best way to accomplish that ?) (100 :out)
    2 (One thing that I\'ve heard about before is comfort care \. Do you think that\'s an option for me ?) (0 :out)

)) ; END *response-tree-comfort-care*



(READRULES '*response-tree-pain-medication-not-working*
; (Why isn\'t the pain medication working anymore 1)
'(
  1 (0 How is the pain medication working 0)
    2 ([SAD] My pain is a little better under the lortab\, but it\'s not really helping as much as it used to \.) (0 :out)
  1 (0 Is the pain medication working at all 0)
    2 (The lortab is working a little bit\, but not much \.) (0 :out)
  1 (0 Is the pain medication working 0)
    2 ([SAD] No\, it\'s not really working anymore \. So I have been taking the pills every three hours instead of every four \.) (0 :out)
  1 (0 Do I have a question about my medicine 0)
    2 ([SAD] I\'m just so frustrated \. The pain medication was working very well a while ago but it\'s not doing half as much now \.) (0 :out)

  1 (0)
    2 ([SAD] Could you tell me why the pain medication isn\'t working anymore ?) (0 :out)

)) ; END *response-tree-pain-medication-not-working*



(READRULES '*response-tree-lortab-frequency*
; (I am taking Lortab every three hours 1)
'(
  1 (0 How often am I taking medication 0)
    2 ([SAD] I am taking two pills of lortab every three hours now for the past couple of weeks\, since this pain has come back \.) (0 :out)
  1 (0 Does taking medication more frequently help 0)
    2 ([SAD] Taking the lortab more often seems to help a little \. I am already taking it every three hours \.) (0 :out)

)) ; END *response-tree-lortab-frequency*



(READRULES '*response-tree-sleep*
; (I have not been sleeping well 1)
; (Why have I not been sleeping well 1)
'(
  1 (0 You are sorry that I am sleeping poorly 0)
    2 ([SAD] Thanks\, I appreciate the sympathy \. Do you know why this is happening\, though ?) (0 :out)

  1 (0 Can I tell you about my sleep instead of test results 0)
    2 ([SAD] I can give a bit more information about what happens when I try to sleep \. Sometimes I wake up in the
       middle of the night and notice an ache in my back and near my chest \. That\'s when I have to
       take pain medication to fall back asleep \.) (100 :out)

  1 (0 Have I been sleeping okay 0)
    2 ([SAD] I have been having a bit of trouble \. I keep waking up at night \. Most nights I have to take my pain medication
       before falling back to sleep again \.) (0 :out)
  1 (0 How often am I waking up at night 0)
    2 (I haven\'t really been keeping track \. Maybe about four or five times in a night \.) (0 :out)

  1 (0 What is on my mind when I try to sleep 0)
    2 ([SAD] When I actually sleep\, I don\'t really have anything on my mind \. When I have trouble sleeping I usually can\'t think
       of anything except for the pain \.) (0 :out)
  1 (0 What happens when I try to sleep 0)
    2 ([SAD] I usually have trouble staying asleep \. Sometimes I wake up in the middle of the night and notice an ache in my
       back and near my chest \. That\'s when I have to take pain medication to fall back asleep \.) (100 :out)
    2 ([SAD] Whenever I wake up\, I usually feel an ache in my back and near my chest \. I usually try to take pain medication
       to help fall back asleep \.) (0 :out)
  1 (0 Is your mental health keeping you awake 0)
    2 ([SAD] I have been feeling a bit of anxiety\, which can sometimes make it difficult to fall asleep\, but usually it\'s
       my pain that keeps me awake \.) (0 :out)
  1 (0 Is coffee keeping you awake 0)
    2 (I only drink two cups of decaf coffee a day\. So\, it might be more likely that my pain is keeping me awake \.) (0 :out)

  ; OPPORTUNITY for Open-Ended Questions: "Were you nervous about this meeting?", "Can you elaborate?"
  1 (0)
    2 ([SAD] [OPPORTUNITY] One thing I\'ve noticed in the last few weeks is that I haven\'t been sleeping very well \. Most nights I
       have to take medication for my pain \. I\'m not sure if it\'s only the pain\, but I keep waking up at night \.
       Do you know why I keep waking up like this ?) (100 :out)
    2 (Do you know what the specific cause of my poor sleep is ?) (0 :out)

)) ; END *response-tree-sleep*



(READRULES '*response-tree-test-results*
; (What do my test results mean 1)
'(
  1 (0 What test results am I referring to 0)
    2 ([SAD] Oh\, sorry\, I assumed you were sent the results \. I had a second CT scan a couple weeks after radiation \.
       I was told that the tumor is still there\, but I wasn\'t sure how to interpret that \. They mentioned something
       about possible metastasis \.) (0 :out)

  1 (0 Do I know what the tests say 0)
    2 ([SAD] I don\'t really understand the test results \. I was just told that the tumor is still there and something about
       possible metastasis\, but I wasn\'t sure how to interpret that \. Can you explain them ?) (0 :out)

  1 (0 You are not sure what my test results mean 0)
    2 ([SAD] Oh\, sorry\, I assumed you were sent the test results\, from when I had my second CT scan a couple weeks after radiation \.
       I was told that the tumor is still there\, but I wasn\'t sure how to interpret that \. They mentioned something
       about possible metastasis \. Could you explain what that means in simple terms ?) (100 :out)
    2 (Could you try your best to explain the test results to me ?) (0 :out)

  1 (0 Can I tell you about my pain instead of test results 0)
    2 (I\'ll think more about my pain medication and talk to you about it another time \. I\'d like to move onto my test
       results now\, though \. Could you explain what they mean ?) (0 :out)
  1 (0 Can I tell you about my sleep instead of test results 0)
    2 (I\'ll think more about my sleep problems and talk to you about it another time \. I\'d like to move onto my test
       results now\, though \. Could you explain what they mean ?) (0 :out)

  1 (0 The test results show that the radiation is not working 0)
    2 ([SAD] I could tell the radiation wasn\'t working anymore\, because my pain has been getting worse \. I still don\'t
       quite understand what the test results mean\, though\. Could you please explain in simple terms ?) (100 :out)
    2 ([SAD] I still don\'t quite understand the test results\. Could you please explain in simple terms ?) (0 :out)

  1 (0 How do I feel about my test results 0)
    2 ([SAD] I could tell something was off even before today because of my difficulty sleeping and my discomfort during the day \. But I\'m still not quite sure how worried I should be \.
      Could you try your best to explain the test results to me ?) (0 :out)
    2 ([SAD] I had a feeling because of my pain that my test results would not be pleasant \. But I\'m still not sure whether I understand them \. Could you please explain in the simplest terms you can ?) (0 :out)

  1 (0 Do I have any questions about my test results 0)
    2 ([SAD] The test results mentioned something about possible metastasis but I\'m still not exactly what that word means \. Could 
       you explain it to me in simple terms ?) (0 :out)
    2 ([SAD] I\'m still a little foggy on what metastasis means \. Would you mind explaining it to me again ?) (0 :out)

  1 (0)
    2 (Let\'s talk about my test results\. I received my test results yesterday\, but I didn\'t really understand them \.
       Could you explain to me what my test results mean ?) (100 :out)
    2 ([SAD] I still don\'t quite understand the test results\. Could you please explain in simple terms ?) (0 :out)

)) ; END *response-tree-test-results*



(READRULES '*response-tree-weight*
; (I have lost weight 1)
'(
  1 (0 Have I changed weight 0)
    2 (I have lost some weight \.) (0 :out)
  1 (0 How much weight have I lost 0)
    2 (I have lost about twenty five pounds since they started \. I gained seven back in radiation\, but I am still down a bit \.) (0 :out)

)) ; END *response-tree-weight*



(READRULES '*response-tree-pain*
; (My pain has recently been getting worse 1)
'(
  1 (0 Can I tell you about my pain instead of test results 0)
    2 (I can give a bit more information about my pain \. I used to just feel it in my back and chest\,
       but it seems to have spread \. Now it\'s in my shoulder blade too\, and on the other side from
       where it started \.) (0 :out)

  1 (0 Can I tell you about my pain 0)
    2 ([SAD] The pain was pretty much under control for a while\, but in the past week it has been more difficult \.
       it used to be in my back and left side of my chest\, but now it\'s in my shoulder blade too\, and on
       the other side from where it started \.) (2 :out)
    2 ([SAD] The pain doesn\'t really go into other areas \. It\'s dull and constant\, and aches a lot \. It usually
       hurts to take deep breathes \.) (0 :out)

  1 (0 How do I rate my pain 0)
    2 (The pain is about a seven out of ten \. With medication\, it goes down to about a five \.) (0 :out)
  1 (0 Where is the pain located 0)
    2 (The pain is primarily in the left side of my chest\, and in the middle of my back \. Recently\,
       it also moved to the right side of my chest \.) (0 :out)

  1 (0 Does it hurt to 0)
    2 (It hurts whenever I take a deep breath \. It used to hurt to swallow during radiation\, but that isn\'t as bad now \.) (0 :out)
  1 (0 Did my pain come back 0)
    2 ([SAD] My pain came back a couple weeks after I finished radiation \. It\'s been getting worse recently \.) (0 :out)

  1 (0 Has the pain become worse 0)
    2 ([SAD] The pain seems to have become worse recently \.) (0 :out)
  
  1 (0 Do you have the pain frequently 0)
    2 ([SAD] I seem to have the pain most of the time\, though sometimes it\'s worse than others \.) (0 :out)

)) ; END *response-tree-pain*



(READRULES '*response-tree-medication*
; (What are the side effects of stronger pain medication 1)
; (I am only taking Lortab to treat my pain 1)
'(
  1 (0 a stronger pain medication will help me sleep 0)
    2 (It would be nice to be able to sleep soundly again \. What would the side effects of a stronger pain medication be\, though ?) (0 :out)

  1 (0 I should take stronger pain medication 0)
    2 (Yeah\, I think I should take a stronger pain medication \. The current one isn\'t working well \. What are the side effects ?) (100 :out)
    2 (Yeah \, a stronger pain medication would be good \. What would the side effects be ?) (0 :out)

  1 (0 Do I want stronger pain medication 0)
    2 (I think I could use a stronger pain medication \. Something to help make me more comfortable \. What are the side effects ?) (100 :out)
    2 (I think having the stronger pain medication would help \.) (0 :out)

  1 (0 I should take something different 0)
    2 (I think something stronger for the pain would be good \. What would the side effects be for a different pain medication ?) (0 :out)
  1 (0 What medicine am I taking 0)
    2 (I am just taking the lortab for pain right now \.) (0 :out)
  1 (0 How were you prescribed your current pain medication 0)
    2 (I was prescribed the Lortab by my previous doctor\, a couple weeks after radiation \.) (0 :out)

  1 (0 What dosage of pain medication am I taking 0)
    2 (I\'ve been taking a pill of the lortab every three hours \. About five pills each day \. I\'m not sure what the exact dosage is \.) (0 :out)

  1 (0 Am I taking pain-med 0)
    2 (I think so \. I am taking lortab for pain right now \.) (0 :out)
  1 (0 Am I taking pain-med-other 0)
    2 (No\, I am not taking any of those \. Just the lortab \.) (0 :out)

  1 (0 What is my history with med-narcotic 0)
    2 (I took some pain medication for a fractured ankle about fifteen or so years ago\, but I don\'t believe it was a narcotic \. 
       besides that\, my doctor prescribed me lortab about three weeks ago \.) (0 :out)
  1 (0 Am I taking med-narcotic 0)
    2 (No\, I am not taking any of those \. Just the lortab \.) (0 :out)

)) ; END *response-tree-medication*



(READRULES '*response-tree-medication-stronger-request*
; (Can I have a stronger pain medication 1)
'(
  1 (0 Addiction is not a side effect of the medication 0)
    2 (It\'s good to know that stronger pain medication is an option without risking addiction \. Would you be
       able to prescribe me some stronger medication\, then ?) (0 :out)
  1 (0 A side effect of the medication be 2 side-effects-moderate 2 \. 0)
    2 (I think I should try the medicine and see if I have problems with 9 10 11 \. Could you prescribe me some ?) (0 :out)
  1 (0 A side effect of the medication be 2 side-effects-insignificant 2 \. 0)
    2 (I already have 9 10 11 \, so I think the new medicine is worth a try \. Could you prescribe me some ?) (0 :out)

  1 (0 NIL GIST 0 side effects 3 medication 0)
    2 (I think it\'s worth giving it a try \. Could you prescribe me some stronger pain medication ?) (0 :out)

  1 (0)
    2 ([SAD] You know\, I\'m in a lot of pain\, and the Lortab just isn\'t working \. I think maybe I need something
       stronger for my pain \.) (100 :out)
    2 (I think it would be worth trying a new pain medication \. Do you think that would be possible ?) (0 :out)

)) ; END *response-tree-medication-stronger-request*



(READRULES '*response-tree-treatment-chemotherapy*
'(
  1 (0 Chemotherapy is a treatment option 0)
    2 ([SAD] Do you think chemotherapy is really going to help ?) (0 :out)

  1 (0)
    2 (What about chemotherapy ?) (0 :out)

)) ; END *response-tree-treatment-chemotherapy*



(READRULES '*response-tree-chemotherapy-explanation*
; (How does chemotherapy work 1)
; (Do I have any questions about chemotherapy ?)
'(
  1 (0 A side effect of chemotherapy is 0)
    2 (0 low blood 0)
      3 (I think I will have to do some more research on those side effects before choosing \.
         How does chemotherapy usually work ?) (0 :out)
    2 (0 neuropathy 0)
      3 (I think I will have to do some more research on those side effects before choosing \.
         How does chemotherapy usually work ?) (0 :out)
    2 (0 hair loss 0)
      3 (Hair loss sounds unpleasant\, but I would be willing to put up with it if it gives me a chance of improving \.
         How does chemotherapy usually work ?) (0 :out)
    2 (0 diarrhea 0)
      3 (Diarrhea sounds unpleasant\, but I would be willing to put up with it if it gives me a chance of improving \.
         How does chemotherapy usually work ?) (0 :out)
    2 (0 nausea 0)
      3 (I already have nausea\, so I think chemotherapy might be worth it if it helps improve my condition \.
         How does chemotherapy usually work ?) (0 :out)
    2 (0 fatigue 0)
      3 (I already have fatigue\, so I think chemotherapy might be worth it if it helps improve my condition \.
         How does chemotherapy usually work ?) (0 :out)
    2 (0 loss of appetite 0)
      3 (My appetite is already pretty poor\, so I think chemotherapy might be worth it if it helps improve my condition \.
         How does chemotherapy usually work ?) (0 :out)
    2 (Okay \. How does chemotherapy usually work ?) (0 :out)

  1 (0 What chemotherapy details are you asking about 0)
    2 (I\'m just wondering how the process of chemotherapy works\, and what I\'d have to do for it \.) (0 :out)

  1 (0 Do I understand how chemotherapy works 0)
    2 (I\'ve heard of chemotherapy before\, but I don\'t really understand what it means \. Could you explain it more ?) (100 :out)
    2 (I don\'t really understand chemotherapy \. Can you explain it ?) (0 :out)

  1 (0)
    2 (How does chemotherapy usually work ?) (0 :out)

)) ; END *response-tree-chemotherapy-explanation*



(READRULES '*response-tree-chemotherapy*
; (Do I need chemotherapy 1)
'(
  1 (0 Did my doctor mention chemotherapy 0)
    2 (My doctor mentioned something about chemotherapy\, but said that I should wait to see how
       things go after the radiation is done \. Why? Do you think I need chemotherapy ?) (0 :out)

  1 (0)
    2 (My previous doctor mentioned something about chemotherapy\, but he said to wait to see how
       things go after the radiation \. Do you think I need chemotherapy ?) (100 :out)
    2 (Thanks\, though I\'m still a bit confused at this point \. Should I get chemotherapy ?) (100 :out)
    2 (Do you think I need chemotherapy ?) (0 :out)

)) ; END *response-tree-chemotherapy*



(READRULES '*response-tree-chemotherapy-side-effects*
; (What are the side effects of chemotherapy 1)
'(
  1 (0 You think we should talk to my oncologist about chemotherapy 0)
    2 (I think it would be best to revisit chemotherapy after talking to my oncologist \. However\, I still want
       to learn a bit more about it \. What are some of the side effects ?) (0 :out)

  1 (0 Do I have any questions about chemotherapy 0)
    2 (When I hear about chemotherapy \, people always seem to mention the side effects \. Are there any side effects of chemotherapy I should know about ?) (0 :out)

  1 (0)
    2 (I hear about people getting sick and losing hair during chemotherapy \. What are some of the side effects ?) (100 :out)
    2 (What are some of the side effects of chemotherapy ?) (0 :out)

)) ; END *response-tree-chemotherapy-side-effects*



(READRULES '*response-tree-tell-family*
; (What should I tell my family 1)
'(
  1 (0 Do my family know about my cancer 0)
    2 ([SAD] My family know about my cancer already\, but they don\'t really know how bad it is\, or what it
       means for me \. How should I discuss these with them ?) (0 :out)

  1 (0)
    2 ([SAD] I haven\'t told my family everything yet \. I wanted to wait to talk to you first \.
       What should I say to them ?) (0 :out)

)) ; END *response-tree-tell-family*



(READRULES '*response-tree-prognosis*
; (what is 1 prognosis 1)
'(
  1 (0 My cancer has gotten worse 0)
    2 ([SAD] What does that mean for me ?) (100 :out)
    2 ([SAD] How long do you think I have left ?) (0 :out)
  1 (0 The prognosis is that I cannot be cured 0)
    2 ([SAD] I feared as much \, though it\'s still pretty upsetting \. How long do you think I have ?) (100 :out)
    2 ([SAD] How long specifically do you think I have left ?) (0 :out)

  1 (0 The prognosis is that my cancer should be treated with chemotherapy 0)
    2 ([SAD] I want to talk about my options in a minute\, but first I just want to know how bad it really is \.
       How long do you think I have ?) (100 :out)
    2 ([SAD] Before I talk about treatment\, I just want to know how bad it really is \. How long do you think I have ?) (0 :out)

  1 (0 The prognosis is hard to predict 0)
    2 (My last doctor also just said it would be hard to predict \. I think I am ready to hear though \. Could you
       please try to tell me what the worst case looks like ?) (100 :out)
    2 ([SAD] I want you to be honest with me \. How long do you think I have ?) (0 :out)

  1 (0 The test results show that the cancer hasn\'t spread 0)
    2 (My previous doctor didn\'t seem very optimistic \. So what do you think this all means for me ?) (100 :out)
    2 (What do you think my future will look like\, then ?) (0 :out)

  1 (0 The test results show that me cannot be cured 0)
    2 ([SAD] That\'s distressing \. I was fearing the worst\, but in the back of my mind I didn\'t think it would all
       happen so quickly \. My family will be distraught \. What I am wondering at this point is\, how much time
       do I have left ?) (100 :out)
    2 ([SAD] I want you to be honest with me \. How long do you think I have left ?) (0 :out)

  1 (0 The test results show that my cancer has spread 0)
    ; OPPORTUNITY for open-ended questions: "Do you understand your prognosis?", "What concerns you the most for your future?", "What are your treatment goals?"
    2 ([SAD] [OPPORTUNITY] Those are not the words I wanted to hear \. I mean\, I was bracing for the worst\, since I could tell by the
       pain that it\'s bad \. But to hear that the cancer has spread is quite depressing \. What does
       it all mean for me ?) (100 :out)
    2 ([SAD] I want you to be honest with me \. How long do you think I have left ?) (0 :out)

  1 (0 The prognosis is that I may live for several elapsed-time 0)
    2 (I\'m not sure whether that\'s a good thing or bad thing \. Could you be more specific about how long
       you think I have left ?) (100 :out)
    2 ([SAD] I want you to be honest with me \. How long do you think I have left ?) (0 :out)

  1 (0 The prognosis is that I do not have long left to live 0)
    2 ([SAD] I know I\'ve been getting worse recently\, but I don\'t feel that bad yet \. How long do you think I really have left ?) (100 :out)
    2 ([SAD] I don\'t really understand \. Could you tell me specifically how long I have left ?) (0 :out)

  1 (0 Do I understand my prognosis 0)
    2 ([SAD] I don\'t really understand my prognosis\, I\'m just bracing myself for the worst \. Can you tell me how
       long you think I have ?) (0 :out)
  1 (0 What scares me about my prognosis 0)
    2 ([SAD] What worries me the most is just how uncertain my future is \. Some days I believe my condition will get better and others I brace myself for the worst \.
      Is there any way you can let me know what I should expect ?) (0 :out)
  1 (0 How do I feel about my prognosis 0)
    2 ([SAD] I feel very anxious about my condition \. I feel like it\'s gotten worse \. I want to know what this means
       for my future \.) (0 :out)

   1 (0 Do I have any questions about my prognosis 0)
    2 (I was wondering whether I could get a second opinion on my prognosis ? I\'m going to be facing a lot of important decisions soon about my future and I want to be 
       as prepared as I can \.)(100 :out)
    2 (Do you think it would be beneficial to get a second opinion on my prognosis ?) (0 :out)

  1 (0)
    ; OPPORTUNITY for open-ended questions: "What are your treatment goals?", "Do you understand your diagnosis?", "How do you feel about your future?"
    2 ([OPPORTUNITY] What do you think this means for me in the future ?) (100 :out)
    2 (How long do you think I have left at this point ?) (100 :out)
    2 (I want you to be honest with me \. How long do you think I have ?) (0 :out)

)) ; END *response-tree-prognosis*


(READRULES '*response-tree-prognosis-denial*
; (Can I trust your prognosis ?)
'(
  1 (0 The prognosis is that I may live for number-plur elapsed-time-plur 0)
    2 (That\'s difficult to hear \. Are you certain I don\'t have any more time than 10 11 ? I had an uncle Fred who was told he had two or three months to live 
       \, but he held on for a year and a half \.) (0 :out)

  1 (0 The prognosis is that I may live for number elapsed-time 0)
    2 (That\'s difficult to hear \. Are you certain I don\'t have any more time than 10 11 ? I had an uncle Fred who was told he had two or three months to live 
       \, but he held on for a year and a half \.) (0 :out)

  1 (0 The prognosis is that I may live for several elapsed-time 0)
    2 (That\'s difficult to hear \. Are you certain I don\'t have any more time than that ? I had an uncle Fred who was told he had two or three months to live 
       \, but he held on for a year and a half \.) (0 :out)

  1 (0 The prognosis is that I do not have long left to live 0)
    2 (That\'s difficult to hear \. Are you certain I don\'t have any more time ? I had an uncle Fred who was told he had two or three months to live 
       \, but he held on for a year and a half \.) (0 :out)
  
  1 (0 The prognosis is that I may live for a elapsed-time 0)
    2 (That\'s difficult to hear \. Are you certain I don\'t have any more time than a 11 ? I had an uncle Fred who was told he had two or three months to live 
       \, but he held on for a year and a half \.) (0 :out)
 
  1 (0 Do I understand my prognosis 0)
    2 (My test results seem to say that I don\'t have a lot of time left \. But I know how hard these things are to predict \.
       Are you sure that my chances aren\'t somewhat better than that ?) (0 :out)

  1 (0)
    2 (I know how hard it is to predict someone\'s chances \. Are you sure that my prognosis is exactly right ?) (0 :out)
    2 (Are you sure my prognosis is correct ?) (0 :out)
)) ; END *response-tree-prognosis-denial*

(READRULES '*response-tree-prognosis-bargaining*
; (Can I outlive your prognosis ?)
'(
  
  1 (0 Do I understand my prognosis 0)
    2 (I know my test results say that I don\'t have a lot of time \. But I still feel pretty good right now \. ) (0 :out)
    2 (The tests say one thing \, but I feel okay right now \. Is there a chance I may be able to beat this ?) (0 :out)

  1 (0 My understanding of my prognosis may be correct 0)
    2 (I\'ve heard how challenging it is to predict these things \. All the same \, for someone with such a bleak prognosis\, I\'m actually feeling pretty great \.
       Is there a chance I may be able to beat this ?) (0 :out)
  
  1 (0 My understanding of my prognosis is incorrect 0)
    2 (Oh\, that\'s too bad\. All the same\, for someone with such a bleak prognosis\, I\'m actually feeling pretty great\. Is there a chance I may be able to beat this ?) (0 :out)

  1 (0 My understanding of my prognosis is correct 0)
    2 (Oh\, that\'s great to hear \. I have to say\, for someone with such a bleak prognosis\, I\'m actually feeling pretty great\. Is there a chance I may be able to beat this ?) (0 :out)

  1 (0 The majority of people have an accurate prognosis 0)
    2 (I guess you\'re right \. But maybe there\'s a reason some people can beat their prognoses and others can\'t ? When my uncle Fred was battling his cancer\, 
       he swore by healthy eating and taking a daily walk \. If I keep in good shape\, will that improve my chances ?) (0 :out)

  1 (0 The majority of people do not have an accurate prognosis 0)
    2 (Well\, it\'s nice to hear that I might have a bit more time than I thought \. When my uncle Fred was battling his cancer\, he swore by healthy eating and taking a daily walk \.
       If I keep in good shape\, will that improve my chances ?) (0 :out)

  1 (0 Quitting smoking will not make my prognosis better 0)
    2 ([SAD] Oh \. That\'s too bad \. I\'m glad that I quit though \. After all \, I have my grandson to think about \. Speaking of my grandson \,
        I know the test results say one thing \, but if I eat right and stay healthy \, do you think I \'ll live to see his graduation ? He\'s in middle school
        right now \. \. \. ) (0 :out)

  1 (0 Quitting smoking might make my prognosis better 0)
    2 (Thank you \. It\'s good to hear that might help \. After all \, I have my grandson to think about \.  I know the test results say one thing \, but if I 
        eat right and stay healthy \, do you think I \'ll live to see his graduation ? He\'s in middle school right now \. \. \. ) (0 :out)
  
  1 (0 Quitting smoking will make my prognosis better 0)
    2 (Thank you \. It\'s good to hear that will help \. After all \, I have my grandson to think about \.  I know the test results say one thing \, but if I 
        eat right and stay healthy \, do you think I \'ll live to see his graduation ? He\'s in middle school right now \. \. \. ) (0 :out)
  
  1 (0 A history of good health will make my prognosis better 0)
    2 (Thank you \. It\'s good to hear that will help \. After all \, I have my grandson to think about \.  I know the test results say one thing \, but if I 
       keep up my health \, do you think I \'ll live to see his graduation ? He\'s in middle school right now \. \. \. ) (0 :out)

  1 (0 A history of good health might make my prognosis better 0)
    2 (Thank you \. It\'s good to hear that might help \. After all \, I have my grandson to think about \.  I know the test results say one thing \, but if I 
        keep up my health \, do you think I \'ll live to see his graduation ? He\'s in middle school right now \. \. \. ) (0 :out)

  1 (0)
    2 (I quit smoking as soon as I heard my diagnosis \. Does that help at all ?) (100 :out)
    2 (I\'ve always been healthy my entire life \. Does that improve my chances ?) (100 :out)
    2 (Do you think I could turn around ? Maybe I\'ll feel different in a few months \.) (100 :out)

)) ; END *response-tree-prognosis-bargaining*

(READRULES '*response-tree-mental-health*
; (I feel mildly depressed 1)
'(
  1 (0 I am sleeping poorly because of my mental health 0)
    2 (I have been feeling a bit down recently\, though I think my pain is the main cause of my sleep problems \.) (0 :out)

  1 (0)
    2 ([SAD] Well\, I do try to keep carrying on\, but sometimes I just feel down \.) (0 :out)

)) ; END *response-tree-mental-health*

(READRULES '*response-tree-anxiety*
; (I feel nervous about my future 1)
'(
  1 (0 Was I nervous about this appointment 0)
    2 (I was a bit nervous about the appointment because I knew I\'d finally learn about what my test results mean \. But what worries me most is my future \. ) (0 :out)
  1 (0 Is something harming your mental health 0)
    2 (Well \. \. \. Sometimes I start to worry about my future \, and I find it difficult to stop \.) (0 :out)
  1 (0)
    2 (It\'s easy for my mind to immediately jump to the worst possible conclusions \. I guess I\'m pretty worried about what the future will hold \.) (0 :out)
)) ; END *response-tree-anxiety*

(READRULES '*response-tree-understanding-of-condition*
; (I know that my cancer has gotten worse\, but I\'m not sure how bad it is 1)
'(
  1 (0 What do I understand 0)
    2 ([SAD] I don\'t really understand it very well \. It feels like my cancer has gotten worse\, but I\'m not
       sure how bad it is \.) (100 :out)
    2 ([SAD] It feels like my condition has gotten worse recently\, but I don\'t really know what this means
       for my future \.) (0 :out)
  
  1 (0 How am I feeling about my condition 0)
    2 ([SAD] It feels like my condition has gotten worse \. But I\'m not yet sure how bad it really is \.) (100 :out)
    2 ([SAD] I don\'t feel good about my condition at all \. It seems like it\'s gotten worse \.) (0 :out)

  1 (0 What scares me about my condition 0) 
    2 ([SAD] What scares me most is that my condition is becoming harder and harder to live with \, but I have no idea how much worse it\'s going to get \. ) (100 :out)
    2 ([SAD] The uncertainty is the scariest part \. If I knew what was coming \, at least I could brace myself for it \. But these days \, I can\'t tell if I\'m
        getting worse or just having a bad day \.) (0 :out)
)) ; END *response-tree-understanding-of-condition*



(READRULES '*response-tree-questions*
; (What are your questions 1)
'(
  1 (0 How do I think this conversation is going 0)
    2 (I think our conversation is going fine \. It\'s just a lot to take in\, though \. Do you have
       any questions for me at this point ?) (0 :out)

  1 (0 How much information do you want 0)
    2 (Please give me as much information as you can\, but try to avoid getting too technical \.
       Don\'t hold anything back\, I think I\'m prepared to hear it \.) (20 :out)
    2 (Try to give me as much information as you think is appropriate \. I probably won\'t understand
       technical terms\, so try to explain in basic language \.) (20 :out)
    2 (Please don\'t hold any information back from me \. Try to explain in simple terms\, though \.) (0 :out)

  1 (0 Am I following what you say 0)
    2 (I think I\'m following \. It\'s just very difficult to take in \. Do you have any specific questions
       for me at this point ?) (0 :out)
    2 (This is a lot of difficult information for me to handle\, but I\'m trying my best to understand \.) (0 :out)

  1 (0)
    2 (What questions do you have for me ?) (20 :out)
    2 (What are your questions ?) (20 :out)
    2 (What questions do you want to ask ?) (0 :out)

)) ; END *response-tree-questions*



(READRULES '*response-tree-rephrase*
; (can 1 rephrase 1 question 1)
'(
  1 (0)
    2 (I am sorry\, I didn\'t quite understand\. Can you say it again ?) (3 :out)
    2 (Would you mind rephrasing ?) (3 :out)
    2 (Could you repeat that one more time using a different phrasing ?) (0 :out)

)) ; END *response-tree-rephrase*