import times, iterutils

proc test_iterutils*: float =
    let start_time = cpuTime()

    for i in toIter(1..100_000_000).
        filter(proc(x: int): bool = x mod 2 == 0).
        filter(proc(x: int): bool = x mod 4 == 0).
        filter(proc(x: int): bool = x mod 8 == 0).
        filter(proc(x: int): bool = x mod 16000 == 0).
        map(proc(x: int): int = x div 16):
            discard
    cpuTime() - start_time
