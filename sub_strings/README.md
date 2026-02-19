# Project: Sub Strings

This is my implementation of a substring counter, developed as part of [The Odin Project's](https://www.theodinproject.com/) Ruby curriculum. The goal is to take a string and a "dictionary" (an array of valid words) and return a count of how many times each dictionary word appears in the string, including cases where they are hidden inside other words.

## 🧠 The Logic Behind

The challenge here was less about encryption and more about **data manipulation and pattern matching**. I had to ensure the method was robust enough to find "words within words" regardless of their case.

### 1. The "Inception" Problem (Sub-matching)
A simple equality check (`word == dictionary_item`) wouldn't work because dictionary words can be part of larger words (like "low" inside "below"). To solve this, I used the **`String#scan`** method. Unlike `include?`, which only returns true/false, `scan` finds every occurrence and returns them in an array, allowing for a precise count.

### 2. Normalization & Case Sensitivity
To ensure that "Howdy" would match "how", I normalized the input string using `.downcase` before processing. This ensures the search is case-insensitive, which is a standard practice for search-related algorithms.

### 3. Efficient Accumulation (`each_with_object`)
Instead of generating an intermediate array and cleaning it up later, I used **`.each_with_object({})`**. This idiomatic approach allowed me to:
- Initialize an empty **Hash** as an accumulator (the "object").
- Iterate through the dictionary and only insert entries into the hash if the word was actually found.
- Use a **conditional `next`** to skip empty matches, ensuring the final hash is clean and contains only relevant data without the need for additional filtering steps like `.compact` or `.delete`.

## 🛠️ Tech Stack & Concepts
- **Language:** Ruby 3.1.4
- **Core Methods:** `each_with_object`, `scan`, `downcase`, `length`, `empty?`.
- **Logic Control:** Accumulator pattern and conditional flows.
- **Data Structures:** Arrays (input dictionary) and Hashes (output summary).

## 🚀 How to use

1. Clone the repository.
2. Navigate to the project folder:
   ```bash
   cd sub_strings