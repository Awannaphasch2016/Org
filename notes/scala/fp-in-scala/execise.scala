// [[file:fp-in-scala-note.org::*Exercise 2: Getting started with Functional Programming][Exercise 2: Getting started with Functional Programming:1]]
def fib(n: Int): Int = {
  @annotation.tailrec
  def loop(n: Int, prev: Int, cur: Int): Int =
    if (n <= res0) prev
    else loop(n - 1, cur, prev + cur)
  loop(n, 0, 1)
}

fib(5) // should be(5)
// Exercise 2: Getting started with Functional Programming:1 ends here
