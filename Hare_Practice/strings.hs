checklower :: String -> Bool
checklower [] = True
checklower (x:xs) = if x `elem` ['a'..'z'] then checklower xs else False


mytail :: [a] -> a
mytail []=error "empty"
mytail [x] = x
mytail (x:xs) = mytail xs


myinit :: [a]->[a]
myinit []=[]
myinit [x] = []
myinit (x:xs) = x:myinit xs

checkpalindrome :: (Eq a)=>[a] -> Bool
checkpalindrome [] = True
checkpalindrome [x] = True
checkpalindrome (x:xs) = if x== (mytail xs) then checkpalindrome (myinit xs ) else False