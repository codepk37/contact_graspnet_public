# Directory containing .pcd files
PCD_DIR=./meancentered_pcd

# Python script path
SCRIPT=python contact_graspnet/inference.py

# Default target: run the script for all .pcd files
run:
	for file in $(PCD_DIR)/*.pcd; do \
		$(SCRIPT) --np_path=$$file; \
	done
