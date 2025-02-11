# randomrows

A simple command-line tool to display the header and random rows from a CSV or text file.

## Installation

```bash
brew tap nealcaren/tools
brew install randomrows
```

## Usage

```bash
randomrows <file> [number_of_random_rows]
```

If number_of_random_rows is not specified, defaults to 5 rows.

## Example

```bash
randomrows data.csv 10
```

This will display the header row and 10 random rows from data.csv.
