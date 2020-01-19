#lang racket
(provide vide?)
(provide gauche)
(provide droite)
(provide racine)
(provide cons-arbre)
(provide arbre-vide)

(define vide? (lambda(A)
                (cond ((equal? A arbre-vide) #t)
                      (#t #f)
                      )))
(define racine (lambda(A)
                 (cond 
                   ((feuille? A) A)
                   (#t (car A))
                   )))

(define gauche(lambda(A)
                      (cond
                        ((feuille? A) arbre-vide)
                        (#t (car (cdr A)))
                        )))

(define droite(lambda(A)
                      (cond
                        ((feuille? A) arbre-vide)
                        (#t (car (cdr (cdr A))))
                        )))

(define feuille? (lambda(A)
                   (not (list? A))))

(define cons-arbre (lambda (rac arg ard)
                     (cond ((and (vide? arg) (vide? ard)) rac)
                           (#t (list rac arg ard))
                           )))
                     

(define arbre-vide '())



