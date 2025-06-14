# Writing to a file
with open("sample.txt", "w") as file:
    file.write("Hello, this is line one!\n")
    file.write("And this is line two.\n")

# Appending more lines
with open("sample.txt", "a") as file:
    file.write("Appending this line.\n")

# Reading the file
with open("sample.txt", "r") as file:
    print("Reading contents of sample.txt:")
    for line in file:
        print(line.strip())