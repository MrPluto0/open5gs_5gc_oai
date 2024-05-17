# Compile Deps
sudo ./build-oai -I

# Compile GNB
./build_oai --gNB --ninja -w SIMU

# Compile UE
./build_oai --nrUE --ninja -w SIMU

# Start GNB
sudo nr-softmodem -O gnb.conf --gNBs.\[0\].min_rxtxtime 6 --rfsim --sa

# Start UE
sudo nr-uesoftmodem -r 106 --numerology 1 --band 78 -C 3619200000 --sa --rfsim -O ue.conf

# -r: Set the number of PRBs for SA
# -C: Set the downlink frequency for all component carriers
# --numerology: adding numerology for 5G
# --band: band index