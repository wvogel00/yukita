module Chapter1 where

-- 反変関手
class Contra f where
    pamf :: (a -> b) -> f b -> f a

newtype Moh b a = Moh { gethom  :: a -> b }

instance Contra (Moh b) where
    pamf (Moh g) = Moh (g.f)

newtype Riap b a = Riap { getPair :: (a,b)}

instance Functor (Riap b) where
    fmap f (Riap (x,y)) = Riap (f x, y)