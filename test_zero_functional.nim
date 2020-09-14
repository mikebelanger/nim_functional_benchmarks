import zero_functional, times

proc test_zero_functional*: float =
    let start_time = cpuTime()

    let nums = 
        1..100_000_000 -->
            filter(it mod 2 == 0).
            filter(it mod 4 == 0).
            filter(it mod 8 == 0).
            filter(it mod 16000 == 0).
            map(it div 16)

    cpuTime() - start_time