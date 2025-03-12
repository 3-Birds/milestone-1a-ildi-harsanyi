# Write a Python function that takes a string as input and counts the frequency of each character in the string. 
# The function should return the character frequencies in a dictionary 
# where keys should be the characters of input string and values represent the number of occurences of each characters.

# In this exercise, the function `character_frequency_counter` takes a string as input, 
# counts the frequency of each character, and then returns the character frequencies. 
# You can run the function with any string you'd like to test.

# Requirements:
# - Returns number of umber of occurences of each characters in a dictionary like in the following sample:
#     {'a': 1, 'b': 2, 'c':3}
# - In case of None input returns None
# - In case of Empty input string, returns None
# - Space characters are missing from output


def get_frequency(input_string:str) -> dict:
    dictionary={}
    if input_string is None:
        return None
    elif input_string== " ":
        return None
    for character in input_string:
        if character in dictionary:
            dictionary[character]+=1
        else:
            dictionary[character]=1
    return dictionary