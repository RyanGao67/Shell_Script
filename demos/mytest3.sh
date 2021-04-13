#Bash 4 natively supports this feature. Make sure your script's
# hashbang is #!/usr/bin/env bash or #!/bin/bash so you don't end up using sh.
# Make sure you're either executing your script directly, or execute script
# with bash script. (Not actually executing a Bash script with Bash does
# happen, and will be really confusing!)

#You declare an associative array by doing:

declare -A animals
#You can fill it up with elements using the normal array assignment operator. For example, if you want to have a map of animal[sound(key)] = animal(value):

animals=( ["moo"]="cow" ["woof"]="dog")
#Or merge them:

declare -A animals=( ["moo"]="cow" ["woof"]="dog")
#Then use them just like normal arrays. Use

animals['key']='value' #to set value

"${animals[@]}" #to expand the values

"${!animals[@]}" #(notice the !) to expand the keys

#Don't forget to quote them:

echo "${animals[moo]}"
for sound in "${!animals[@]}"; do echo "$sound - ${animals[$sound]}"; done


#ryangao67@ryangao67-ThinkPad-T460s:~$ NUM=$((1+1))
#ryangao67@ryangao67-ThinkPad-T460s:~$ echo $NUM
#2
#ryangao67@ryangao67-ThinkPad-T460s:~$ NUM=1+1
#ryangao67@ryangao67-ThinkPad-T460s:~$ echo $NUM
#1+1
