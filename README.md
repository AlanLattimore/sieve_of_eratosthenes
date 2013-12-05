Eratosthenes’s original algorithm was based on the idea of removing non-primes from a list of integers.
The next unremoved integer must be prime, because it was not divisible by any of the smaller primes.

Make a list of the integers from 2 to n
For each integer i, 2 <= i <= n
    If i has not been crossed out
        Cross out all multiples of i (except i itself).