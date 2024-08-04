# Simple_Calculator using Cairo Programming language.

##For Cairo to run you must install Scarb.

Scarb is Cairo's build toolchain and package manager which bundles the Cairo compiler and the Cairo language server.

###Installing Scarb

Scarb operates on all operating systems, open your terminal and run the following command: ``` bash 
curl --proto '=https' --tlsv1.2 -sSf https://docs.swmansion.com/scarb/install.sh | sh```

###Verify the installation 
After installing Scarb, verify the installation by running: ``` bash
scarb --version```

###Ensure you have vs code installed in your machine.

###Open the project in vs code
Navigate to `src/lib.cairo` file, which contains the code.

###Start a new terminal.

###Building the Project
To build the project, run the following command: ``` bash 
scarb build```

###Running the Project
To run the project use the following command: ``` bash 
scarb cairo-run``` .

