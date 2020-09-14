import times

proc test_raw*: float =
    let start_time = cpuTime()

    for i in 1..100_000_000:
        if i mod 2 == 0:
            if i mod 4 == 0:
                if i mod 8 == 0:
                    if i mod 16000 == 0:
                        discard i div 16

    cpuTime() - start_time