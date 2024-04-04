#!/bin/bash

## Should run [. .setup.sh] at root directory
export ROOT_DIR=$PWD
echo "Root Dir: $ROOT_DIR"

# Function to create directory if it doesn't exist
create_directory() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
        echo "Created directory: $1"
    else
        echo "Directory already exists: $1"
    fi
}

# Create directories if they don't exist
create_directory "$ROOT_DIR/data_info/"
create_directory "$ROOT_DIR/view_and_diagnosis_labeled_set/"
create_directory "$ROOT_DIR/model_checkpoints/"

# Set environment variables
export DATA_INFO_DIR="$ROOT_DIR/data_info/"
export DATA_DIR="$ROOT_DIR/view_and_diagnosis_labeled_set/"
export CHECKPOINT_DIR="$ROOT_DIR/model_checkpoints/"

<<<<<<< HEAD:setup.sh
echo "Data Info Directory: $DATA_INFO_DIR"
echo "Data Directory: $DATA_DIR"
echo "Checkpoint Directory: $CHECKPOINT_DIR"
=======
bash runs/SAMIL/launch_experiment.sh run_here
>>>>>>> 984aaf210e52a211b11651d70951ed8fee4381da:run.sh
