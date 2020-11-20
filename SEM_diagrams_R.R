install.packages("DiagrammeR", dependencies = T)

library(DiagrammeR)


# full model nitrification

grViz("
      digraph SEM {
      
      graph [layout = dot,
      overlap = true,
      outputorder = edgesfirst
      rankdir=LR]
     
      
      node [shape = rectangle]
      
      a [pos = '-4,1!', label = 'C:N']
      b [pos = '-3,0!', label = <AOA>]
      c [pos = '-4,0!', label = 'AOB']
      d [pos = '-3,-1!', label = 'Gross nitrification']
      e [pos = '-2,1!', label = <NH<SUB>4</SUB><SUP>+</SUP>>]
      f [pos = '-5,1!', label = 'pH']
      
      f->b [label = '',  fontcolor=gray, fontsize=11]
      f->c [label = '',  fontcolor=gray, fontsize=11]
      f->e [label = '',  fontcolor=gray, fontsize=11]
      a->b [label = '',  fontcolor=gray, fontsize=11]
      e->c [label = '',  fontsize=11]
      e->b [label = '', fontsize=11]
      e->d [label = '',  fontcolor=gray, fontsize=11]
      a->c [label = '',  fontsize=11]
      b->d [label = '', fontcolor=gray, fontsize=11]
      c->d [label = '',  fontcolor=gray, fontsize=11]
      a->e [label = '',  fontcolor=gray, fontsize=11]
      }
      ")