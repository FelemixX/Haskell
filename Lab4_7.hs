data Number = Zero | Next Number deriving Show
--fromInt(3)
--toInt(Next$ Next$ Next$ Zero)
--fact (Next$ Next$ Next$ Zero)
--dec(Next$ Next$ Next$ Zero)

fromInt 0 = Zero
fromInt n = Next $ fromInt (n - 1)

toInt Zero = 0
toInt (Next n) = succ (toInt n)

plus Zero n = n
plus t n = Next (plus (dec t) n)

mult Zero _ = Zero
mult t n = plus n (mult (dec t) n)

dec (Next n) = n
dec _ = Zero

fact Zero = Next Zero
fact n = mult n (fact (dec n))
