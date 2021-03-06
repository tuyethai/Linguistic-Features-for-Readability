# Usage: bash bash_scripts/run_config_multi_cpu.sh config_path start_array_num end_array_num
# start and end array nums are inclusive
mod=logs/slurm/${1//\//\_}
sbatch --export=ALL,RUN_CONFIG=$1 -o $mod\_%A_%a.out -e $mod\_%A_%a.err --array=$2-$3 bash_scripts/runexp_multi_cpu.sh