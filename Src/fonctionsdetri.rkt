#lang racket
(require "arbre.rkt")
(provide triinfixe triprefixe tripostfixe)








(define insererI (lambda (n A)
                   (cond ((vide? A) (cons-arbre n arbre-vide arbre-vide))
                         ((< n (racine A)) (cons-arbre (racine A) (insererI n (gauche A)) (droite A)))
                         (#t (cons-arbre (racine A) (gauche A) (insererI n (droite A))))
                      
                         )))


(define arbre (lambda(l)
                (cond ((null? l) arbre-vide)
                      (#t (insererI (car l) (arbre (cdr l))))
                      )))





(define postfixe(lambda(A)
                      (cond((vide?  A)     '())
                           (#t (append (append (postfixe (gauche A)) (postfixe (droite A))) (list (racine A))))
                           )))

(define prefixe(lambda(A)
                 (cond((vide? A) '())
                      (#t (append (cons (racine A) (prefixe(gauche A))) (prefixe (droite A))))
                      )))

(define infixe(lambda(A)
                (cond ((vide? A)   '())
                      (#t       (append (infixe(gauche A)) (cons (racine A) (infixe(droite A)))))
                      )))


(define triinfixe(lambda(l)
                     (infixe (arbre l))
                     ))

(define triprefixe(lambda(l)
                     (prefixe (arbre l))
                     ))

(define tripostfixe(lambda(l)
                     (postfixe (arbre l))
                     ))

