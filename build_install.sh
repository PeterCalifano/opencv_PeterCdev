# Check if opencv_contrib is in the same root directory as opencv
if [ ! -d "../opencv_contrib_PeterCdev" ]; then
    echo "Error: opencv_contrib_PeterCdev not found. Please clone it in the same root directory as opencv."
    exit 1
fi

# Generate build files
cmake -B build -S . -DWITH_VTK=ON -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib_PeterCdev/modules # Use -DWITH_TBB=On if you have TBB

# Build the project
cmake --build build --config Release

# Install system-wide
sudo make install -C build -j2