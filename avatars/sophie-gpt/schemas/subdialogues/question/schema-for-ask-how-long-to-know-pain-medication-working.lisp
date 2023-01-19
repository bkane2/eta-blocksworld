;; *ask-how-long-to-know-pain-medication-working*: development version 6
;;
;; 
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defparameter *ask-how-long-to-know-pain-medication-working*

'(event-schema :header (((set-of ^me ^you) ask-how-long-to-know-pain-medication-working.v) ** ?e)
;````````````````````````````````````````````````````````````````````````````````

:types (
  !t1 (^me person.n)
  !t2 (^you person.n)
)

:rigid-conds (
  ; Sophie is a woman
  !r1 (^me ((pres be.v) (= (a.d woman.n))))
  ; Sophie is 65 years old
  !r2 (^me ((pres be.v) ((mod-a (65.a (plur year.n))) old.a)))
)

:static-conds (
  ; Sophie has lung cancer
  ?s1 (^me ((pres have.v) (k (lung.n cancer.n))))
)

:preconds (
  ; Sophie does not know whether her pain medication is working
  ?p1 (^me ((pres do.aux-s) not (know.v (whether
        (((^me 's) (pain.n medication.n)) ((pres be.v) working.a))))))
)

:goals (
  ; Sophie wants to know whether her pain medication is working
  ?g1 (^me ((pres want.v) (to (know.v (whether
        (((^me 's) (pain.n medication.n)) ((pres be.v) working.a)))))))
  ; Sophie wants to know how she can tell whether her pain medication is working
  ?g2 (^me ((pres want.v) (to (know.v (ans-to
        (sub how.pq (^me ((pres can.aux-s) (tell.v
          (whether (((^me 's) (pain.n medication.n)) ((pres be.v) working.a))) *h)))))))))
)

:episodes (

?e1 (^me paraphrase-to.v ^you '(How will I know if my pain medication is working ?))
 
?e2 (^you reply-to.v ?e1)

)

)) ; END defparameter *ask-how-long-to-know-pain-medication-working*



;````````````````````````````````````````````````````````
; Store schema variable name under header in *schemas*
;
(store-schema-name 'ask-how-long-to-know-pain-medication-working.v '*ask-how-long-to-know-pain-medication-working*)



;````````````````````````````````````````````````````````
; Create empty hash tables for semantics,
; gist-clauses, and topic-keys
;
(setf (get '*ask-how-long-to-know-pain-medication-working* 'semantics) (make-hash-table))
(setf (get '*ask-how-long-to-know-pain-medication-working* 'gist-clauses) (make-hash-table))
(setf (get '*ask-how-long-to-know-pain-medication-working* 'topic-keys) (make-hash-table))



;````````````````````````````````````````````````````````
; EL Semantics - Not yet used
;
(mapcar #'(lambda (x)
      (store-output-semantics (first x) (second x) '*ask-how-long-to-know-pain-medication-working*))
  '()
) ; END mapcar #'store-output-semantics



;````````````````````````````````````````````````````````
; Gist clauses
;
(mapcar #'(lambda (x) 
      (store-output-gist-clauses (first x) (second x) '*ask-how-long-to-know-pain-medication-working*))
  '()
) ; END mapcar #'store-output-gist-clauses



;````````````````````````````````````````````````````````
; Topic keys
;
(mapcar #'(lambda (x) 
      (store-topic-keys (first x) (second x) '*ask-how-long-to-know-pain-medication-working*))
  '()
) ; END mapcar #'store-topic-keys
