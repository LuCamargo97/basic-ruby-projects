# Project: Stock Picker

This is my implementation of the **Stock Picker** algorithm, developed as part of [The Odin Project's](https://www.theodinproject.com/) Ruby curriculum. The goal is to analyze a list of stock prices (representing consecutive days) and determine the optimal pair of days to buy and sell to maximize profit.

## 🧠 The Logic Behind

The core challenge of this project was ensuring the algorithm respected **real-world chronology** (you can't sell a stock before you buy it) while remaining efficient.

### 1. The "Time Travel" Constraint
A "brute force" approach—comparing every day with every future day—would result in $O(n^2)$ complexity, which is inefficient for large datasets. To solve this, I implemented a **One-Pass algorithm ($O(n)$)**. The logic "remembers" the lowest point in the past while simultaneously looking for the best exit point in the future.

### 2. The "Candidate" vs. "Official" Logic
To manage the synchronization between the best price found and the best profit achieved, I used a clear distinction in variable roles. `candidate_buy_day` acts as a "scout," tracking the lowest dip, while `buying_day` and `selling_day` are only updated when a new profit record is officially broken.

## 🛠️ Tech Stack & Concepts
- **Language:** Ruby 3.1.4
- **Core Methods:** `each_with_index`, `next`, Parallel Assignment.
- **Logic Control:** Guard clauses and pointer synchronization.
- **Concepts:** Linear Time Complexity ($O(n)$).

## 🚀 How to use

1. Clone the repository.
2. Navigate to the project folder: `cd stock_picker`
3. Run the script or test it in your Ruby REPL with these scenarios:

```ruby
**Scenario A: Standard profit**
Input: `[17, 3, 6, 9, 15, 8, 6, 1, 10]` -> Output: `[1, 4]` (Profit: $12)

**Scenario B: Deep valley**
Input: `[10, 2, 1, 20, 3]` -> Output: `[2, 3]` (Profit: $19)

**Scenario C: No profit possible**
Input: `[20, 10, 5, 1]` -> Output: `"dont buy-it"`