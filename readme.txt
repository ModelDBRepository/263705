This is the readme for the model associated with the paper:

Traub RD, Moeller F, Rosch R, Baldeweg T, Whittington MA, Hall SP
(2020) Seizure initiation in infantile spasms vs. focal seizures:
proposed common cellular mechanisms. Rev Neurosci 31:181-200

This paper makes a lot of references to these papers which are also
associated with this model:

Hall S, Hunt M, Simon A, Cunnington LG, Carracedo LM, Schofield IS,
Forsyth R, Traub RD, Whittington MA (2015) Unbalanced Peptidergic
Inhibition in Superficial Neocortex Underlies Spike and Wave Seizure
Activity. J Neurosci 35:9302-14

Carracedo LM, Kjeldsen H, Cunnington L, Jenkins A, Schofield I,
Cunningham MO, Davies CH, Traub RD, Whittington MA (2013) A
neocortical delta rhythm facilitates reciprocal interlaminar
interactions via nested theta rhythms. J Neurosci 33:10750-61

This code was contributed by R Traub.

The source code is standard fortran with special instructions for the
mpi parallel environment.  Included pdf file has illustrative output,
an example of the main program (plateauVFO.f also called
plateauVFO11.f in my notes), a number of fortran subroutines and one
in C, and the “makefile” which does compilation and linking.

I have run the code on an IBM power chip residing in IBM’s Cognitive
Computing Cluster, at a time when the AIX operating system was in use
(that is IBM’s version of Linux).  The machine model is given in the
ms text, but is probably not relevant.  The CCC has since switched to
Linux.  The code should also run under Linux, but I have not tried it;
however, I have converted similar programs from AIX to Linux without
difficulty; the routines simply need to be compiled with the Fortran
compiler in use on the operating system, and an appropriate makefile
used.  The details of the makefile are going to be system-dependent.

The code does not run on data.  Each run is autonomous, with
parameters chosen by the programmer.  I also do not expect that the
code will run on a desktop, given the need for mpi.
