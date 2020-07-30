#FLAGS =   -w 
#FLAGS = -c  -w 
#FLAGS =   -C -w -save
#FLAGS = -O3 -qextchk -qarch=auto 
#FLAGS = -O3  -qarch=auto 
#FLAGS = -g -d1 -C -w  -qattr 

 FC = xlf_r
#FC = gfortran


 STRUCT = groucho_gapbld.o  gettime.o  dexptablesmall_setup.o dexptablebig_setup.o synaptic_map_construct.o synaptic_compmap_construct.o durand.o 

 INTEGRATE =  fnmda.o integrate_supVIP.o integrate_deepaxaxx.o integrate_deepbaskx.o integrate_deepng.o  integrate_nrtxB.o integrate_supLTSX.o integrate_supaxaxx.o integrate_supbaskx.o integrate_supng.o   integrate_tcrxB.o   integrate_spinstelldiegoxB.o 


plateauVFO : plateauVFO.f makefile gettime.o durand.o $(STRUCT) $(INTEGRATE)
	mpif90 -g -O3 -qfixed plateauVFO.f $(STRUCT) $(INTEGRATE) -o plateauVFO

gettime.o : gettime.c
	gcc -c -O2 gettime.c

durand.o : durand.f
	xlf_r -c -O3 durand.f

%.o : %.f
	$(FC)  -c -g -O3 $<


clean :
	rm -f plateauVFO    
	
