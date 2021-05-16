
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/mithunr/anaconda2/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

alias enable_egpu='sudo sh -c "echo 1 >  /sys/bus/thunderbolt/devices/0-3/authorized "'

set CUDA_HOME /usr/local/cuda
set LD_LIBRARY_PATH /usr/local/cuda-10.2/lib64
set SPARK_HOME /home/mithunr/workspace/dev/spark/bin/spark-home
set PATH $PATH:$CUDA_HOME/bin:$SPARK_HOME/bin

alias cmake="/home/mithunr/anaconda2/envs/cudf_dev/bin/cmake"
alias submodule_cudf="git submodule update --init --remote --recursive "
# alias cmake_cudf="PARALLEL=6 cmake .. -GNinja -DCMAKE_INSTALL_PREFIX=\$CONDA_PREFIX -DCMAKE_CXX11_ABI=ON -DGPU_ARCHS=\"\" -D DISABLE_DEPRECATION_WARNING=ON"
alias cmake_cudf="PARALLEL_LEVEL=6 cmake .. -GNinja -DCMAKE_INSTALL_PREFIX=$CONDA_PREFIX -DCMAKE_CXX11_ABI=ON -DGPU_ARCHS="" -D DISABLE_DEPRECATION_WARNING=ON -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DARROW_STATIC_LIB=ON -DBoost_USE_STATIC_LIBS=ON "
alias cmake_cudf_debug="PARALLEL_LEVEL=6 cmake .. -GNinja -DCMAKE_INSTALL_PREFIX=$CONDA_PREFIX -DCMAKE_CXX11_ABI=ON -DGPU_ARCHS="" -D DISABLE_DEPRECATION_WARNING=ON -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DARROW_STATIC_LIB=ON -DBoost_USE_STATIC_LIBS=ON -DCMAKE_BUILD_TYPE=RelWithDebInfo"
alias make_spark='build/mvn clean install -DskipTests -Dskip -Dscalastyle.skip -Phive -Phive-thriftserver'
