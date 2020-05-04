{-
If you want to run an elm file you have to provide the bare minium, you can't just
do as in one line or one function. Here is a good example of such a bare minimum:
https://ellie-app.com/7nVDGRBQr8ka1

As you can see, a function was tested and without any model etc - the output fed to main.
And if you don’t want to run it in elm repl or on elli you should consider that you expand
your playground with and index.html in which you load your bare minimum elm js file, this
way you also have the console logs.
-}

{-
A main function is required, but can be reduced to `main = text ""`. Debug.log should be
available unless you build for production with --optimize, as explained in its documentation.
Alternatively, you could use ports for printing.
-}


-- Create a custom type
type UserId = UserId String


-- The UserId type can now be used as a constructor function
john : UserId
john = UserId "87h3r8fh2"


-- Use destructuring (i.e. pattern matching) to convert
-- a custom type back to it's original type
-- https://gist.github.com/yang-wei/4f563fbf81ff843e8b1e
userIdToString : UserId -> String
userIdToString (UserId str) = str
