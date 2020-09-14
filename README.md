# nim_functional_benchmarks

Benchmark comparing nim's various functional libraries.  This is done by comparing processing times of a simple set of filters and maps on a million integers.  This is based on simple benchmark from [iterutils' documentation](https://hookrace.net/nim-iterutils/iterutils.html).  The main difference between that and this is there's a [zero functional](https://github.com/zero-functional/zero-functional) benchmark added.

To reproduce, ensure you're running the latest stable (as of this writing, 1.0.4), clone this repo, cd into the directory and run:

```
nim c -r benchmark.nim
```

Results on my 2012 Macbook Pro, tested with Nim v1.0.4 (Mac OSX: amd64), git hash: c8998c498f5e2a0874846eb31309e1d1630faca6: 

```
raw (regular for loops): 3.290208s
sequtils: 13.000742s
iterutils: 11.293025s
zero functional: 4.853399s
```