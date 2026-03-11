# Project: Bubble Sort

This is my implementation of the **Bubble Sort** algorithm, developed as part of [The Odin Project's](https://www.theodinproject.com/) Ruby curriculum. The goal is to take an array of numbers and sort them in ascending order by repeatedly stepping through the list, comparing adjacent elements, and swapping them if they are in the wrong order.

## 🧠 The Logic Behind

The challenge was to transform the theoretical "bubble" concept into a clean, idiomatic Ruby implementation that avoids common pitfalls like unnecessary iterations or "index out of bounds" errors.

### 1. The "Floating" Mechanism
The algorithm gets its name because the larger elements "bubble" up to the end of the collection with each pass. To make this efficient, I used a **Flag-based approach (`swapped`)**. This ensures that if the array becomes sorted before the maximum number of iterations is reached, the algorithm stops immediately, improving performance in "best-case" scenarios.

### 2. Semantic Readability over Math
Instead of raw mathematical operations within the loops, I prioritized **clean code principles**. By naming the indices and elements (e.g., `current_element`, `next_element`), the logic becomes self-explanatory, reducing the mental load required to understand the swapping process.

## 🛠️ Tech Stack & Concepts
- **Language:** Ruby 3.1.4
- **Core Methods:** `loop`, `each`, `Range` (exclusive), Parallel Assignment.
- **Logic Control:** Guard clauses and Boolean flags.
- **Data Structures:** Arrays (Linear Collections).

## 🚀 How to use

1. Clone the repository.
2. Navigate to the project folder: `cd bubble_sort`
3. Run the script or test it in your Ruby REPL with these scenarios:

**Scenario A: Unsorted array**
Input: `[4, 3, 78, 2, 0, 2]` -> Output: `[0, 2, 2, 3, 4, 78]`

**Scenario B: Reverse order (Worst Case)**
Input: `[10, 5, 2, 1]` -> Output: `[1, 2, 5, 10]`

**Scenario C: Negative numbers and Zeros**
Input: `[0, -5, 10, -1]` -> Output: `[-5, -1, 0, 10]`