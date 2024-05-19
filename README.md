Written by Dirk Colbry with lots of help from Craig Gross

Instructions for installing MFEM and GLVis on the HPCC.  There are three EasyBuild files in this directory.  the glew file was adopted from a file found online adn the GLVis and MFEM were created from scratch. To test the script run '''source ./build_mfem.sh''' which will create a ../software/ directory and install what is needed. Assuming it works you can then test the module by running the following commands:

  module use ../software/modules/all
  module load GLVis

#TODO: Although the install completes the software still needs to be tested. 
