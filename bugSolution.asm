mov eax, [esp+4]
cmp eax, 0xFFFFFFFF - 10; Check for overflow
jl overflow_check_passed
jmp overflow_occurred
overflow_check_passed:
add eax, 10
mov [esp+4], eax
jmp end
overflow_occurred:
; Handle overflow appropriately, e.g., raise an exception
end: