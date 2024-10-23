if ! colima status > /dev/null 2>&1; then
    colima start --memory 4 --arch aarch64 --vm-type=vz --vz-rosetta --mount-type virtiofs
fi
