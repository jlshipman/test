print "hello"

print "fizzbuzz"
print "##############################"
def fizzbuzz(n):

    if n % 3 == 0 and n % 5 == 0:
        return 'FizzBuzz'
    elif n % 3 == 0:
        return 'Fizz'
    elif n % 5 == 0:
        return 'Buzz'
    else:
        return str(n)

print "\n".join(fizzbuzz(n) for n in xrange(1, 21))

def fib(n):
    if n == 0: return 0
    elif n == 1: return 1
    else: return fib(n-1)+fib(n-2)

print "##############################\n"
print "fib"
print "##############################"
print fib(10)

fibo=[0,1]
for i in range (50):
    fibo.append(fibo[-1]+fibo[-2])
print fibo