import raw_bench
import sequtil_bench
import iterutils_bench
import test_zero_functional

let
    raw_time = test_raw()
    sequtils_time = test_sequtils()
    iterutils_time = test_iterutils()
    zero_functional_time = test_zero_functional()

echo "raw (regular for loops): ", $raw_time, "s"
echo "sequtils: ", $sequtils_time, "s"
echo "iterutils: ", $iterutils_time, "s"
echo "zero functional: ", $zero_functional_time, "s"
