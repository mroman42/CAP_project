#############################################################################
##
##                                LinearAlgebraForCAP package
##
##  Copyright 2015, Sebastian Gutsche, TU Kaiserslautern
##                  Sebastian Posur,   RWTH Aachen
##
#! @Chapter Category of Matrices
##
#############################################################################

####################################
##
## GAP Category
##
####################################

DeclareCategory( "IsVectorSpaceMorphism",
                 IsCapCategoryMorphism );

####################################
##
#! @Section Constructors
##
####################################

#! @Description
#! The arguments are an object $S$ in the category of matrices over a
#! homalg field $F$, a homalg matrix $M$ over $F$, and another object $R$
#! in the category of matrices over $F$.
#! The output is the morphism $S \rightarrow R$ in the category
#! of matrices over $F$ whose underlying matrix is given by $M$.
#! @Returns a morphism in $\mathrm{Hom}(S,R)$
#! @Arguments S, M, R
DeclareOperation( "VectorSpaceMorphism",
                  [ IsVectorSpaceObject, IsHomalgMatrix, IsVectorSpaceObject ] );

####################################
##
#! @Section Attributes
##
####################################

#! @Description
#! The argument is a morphism $\alpha$ in the matrix category over a
#! homalg field $F$.
#! The output is the field $F$.
#! @Returns a homalg field
#! @Arguments alpha
DeclareAttribute( "UnderlyingFieldForHomalg",
                  IsVectorSpaceMorphism );

#! @Description
#! The argument is a morphism $\alpha$ in a matrix category.
#! The output is its underlying matrix $M$.
#! @Returns a homalg matrix
#! @Arguments alpha
DeclareAttribute( "UnderlyingHomalgMatrix",
                  IsVectorSpaceMorphism );
