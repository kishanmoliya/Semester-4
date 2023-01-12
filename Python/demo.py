# Maximum Word
max = ""
f1 = open("abc.txt")
lines =  f1.readlines()

for l in lines:
    words = l.split()
    for w in words:
        if len(w) > len(max):
            max = w
print(max)