-- Declarations and variables
x :: Int
x = 3

y :: Int
y = y + 1

-- Basic Types
--- Machine-sized integers

i :: Int -- i "has type Int"
-- will throw error if 'i' has no definition even if it was declared of type Int
i = 10

--- single line type declaration
biggestInt, smallestInt :: Int
biggestInt = maxBound
smallestInt = minBound

n :: Integer
n = 1234567890987654321987340982334987349872349874534

reallyBig :: Integer
reallyBig = 2^(2^(2^(2^2)))

numDigits :: Int
-- show converts it into an IO object, accepts string as argument 0 (?????) wild guess
-- while length https://www.haskell.org/hoogle/?hoogle=length, 
-- just check hoogle 
numDigits = length (show reallyBig)

-- double-precision floating point
d1, d2 :: Double
d1 = 3.16
d2 = 6.2831e-4

-- booleans
b1, b2 :: Bool
b1 = True
b2 = False

c1, c2, c3 :: Char
c1 = 'x'
c2 = 'Ø'
c3 = 'ダ'

s :: String
s = "Hello, Haskell"

ex01 = 3 + 2
ex02 = 19 - 27
ex03 = 2.35 * 8.6
ex04 = 8.7 / 3.1
ex05 = mod 19 3
ex06 = 19 `mod` 3
ex07 = 7 ^ 222
ex08 = (-3) * (-7)
ex09 = i `div` i
ex10 = 12 `div` 5
ex11 = True && False
ex12 = not (False || True)
ex13 = ('a' == 'a')
ex14 = (16 /= 3)
ex15 = (5 > 3) && ('p' <= 'q')
ex16 = "Haskell" > "C++"

-- Basic functions
sumtorial :: Integer -> Integer
sumtorial 0 = 0
sumtorial n = n + sumtorial (n - 1)

-- trying hw
lastDigit :: Integer -> Integer
lastDigit n
  | length(show n) == 1 = n
  | otherwise           = read(tail(show n))::Integer