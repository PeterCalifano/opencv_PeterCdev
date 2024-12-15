# Generate build files
cmake -B build -S . -DWITH_VTK=On .. # Use -DWITH_TBB=On if you have TBB

# Build the project
cmake --build build --config Release

# Install system-wide
sudo make install -C build -j2