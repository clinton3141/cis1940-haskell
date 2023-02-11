This is a literate haskell file.

Lines starting with `>` are treated as code but everything else is a comment.

It can be compiled as usual with `ghc` automatically if the file has extension `.lhs`

Here's an example:

This is an adder

> add1 :: Int -> Int
> add1 x = x + 1

But it can also be written point free

> add1' :: Int -> Int
> add1' = (+1)

> main = do
>    print $ add1 1
>    print $ add1' 1
