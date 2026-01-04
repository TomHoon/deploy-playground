# 서비스 살아있는지 확인
> up{job="express"}

# 메모리 사용량
> process_resident_memory_bytes

# CPU 사용량
> rate(process_cpu_seconds_total[1m])

# 힙 메모리 사용량
> nodejs_heap_size_used_bytes
