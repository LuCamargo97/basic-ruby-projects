# Project: Caesar Cipher

This is my implementation of the classic Caesar Cipher, developed as part of [The Odin Project's](https://www.theodinproject.com/) Ruby curriculum. It’s a tool that encrypts text by shifting each letter by a fixed number of positions down the alphabet.

## 🧠 The Logic Behind

The main challenge was to go beyond a simple shift and handle real-world text complexities. Here is how I solved the core problems:

### 1. Alphabet Wrap-around
Instead of using multiple `if/else` statements to check if the shift went past 'z', I used the **Modulo Operator (`%`)**. This creates a mathematical cycle, ensuring the index always stays within the 26-letter range:
`new_letter_index = (current_index + shift) % 26`

### 2. Internationalization (Accents)
I noticed that standard ciphers often fail with accented characters (like `é`, `ã`, `ç`). To fix this, I implemented a **Unicode Normalization** process:
- It decomposes characters (e.g., `é` becomes `e` + `´`).
- It uses Regex (`/\p{Mn}/`) to strip the accent marks.
- This ensures that every letter is encrypted, even if it originally had an accent, avoiding "security leaks" in the ciphertext.

### 3. Case Preservation
The algorithm identifies if a character is uppercase before any transformation. After the shift is calculated on the lowercase version, it restores the uppercase state if necessary, keeping the original "visual soul" of the message.

## 🛠️ Tech Stack & Concepts
- **Language:** Ruby 3.1.4
- **Methods:** `map`, `unicode_normalize`, `gsub`, `find_index`.
- **Regex:** Used for filtering non-spacing marks.
- **Data Structures:** Arrays and Strings.

## 🚀 How to use

1. Clone the repository.
2. Navigate to the project folder:
   ```bash
   cd caesar_cipher