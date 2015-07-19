# comment
console.log 'hello'

###
1. var is not needed
2. ; is not needed
3. {} is presented by indent
4. () can be abbreviated
###


###
var score = 82;
if (score > 70) {
    alert("OK");
}
###

# if you wanna write row javascript:
# `alert("hello");`


# ** String handling ** #

score = 82
# text decomplession
console.log "score: #{score}"
console.log "score*10: #{score*10}"
if (score >70)
    console.log "OK"


# unwanted indents are automatically removed
message = "this
is
    a
    very
    long
    message
    "

# heredocument
# special characters are automatically escaped!
html = """
<div id="main"></div>
"""


# ** Array ** #

a = [1,3,5]
b = [
    1 # no comma
    3 # indents are needed
    5
]

m = [0..5]
n = [0...5]

console.log m[1..3]
console.log m[..3]
console.log m[1..-2]
m[0..1] = ["a","b","c"]
console.log "ikuwow"[1..3]

# ** Object ** #

m =
    name: "degawa"
    score:
        first: 73
        second: 99
        third: 100
# like yaml

console.log "first score is..."
if m.score.first > 80 then console.log "Good!" # inline
console.log "Bad..." if m.score.first < 80 # after

console.log "second score is..."
if m.score.second > 80 then console.log "Good!" else console.log "Bad..."

# ternary operator is not allowed!
console.log "third score is..."
msg = if m.score.third > 80 then "Good!" else "Bad..."
console.log msg


# ** comparative operator ** #
## == => ===
## isnt

x = 3
console.log "ok" if 10 < x < 20
# true -> yes on
# false -> no off
# ! not
# ex. console.log "OK" if answer is yes and signal is off

console.log "OK" if 5 in [1,3,5]

console.log "key exists" if "name" of m
