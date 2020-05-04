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
