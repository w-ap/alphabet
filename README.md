# Alphabet

![Alphabet](avatar.png)

Alphabet is an intelligent developer toolkit for 10x software engineering.

## Technical Specification

Alphabet is a CLI application in the Bash programming language. 

## Installation

```sh
# Simply clone the .git repository and source the Alphabet bash profile
$ git clone https://github.com/w-ap/alphabet.git \
      && cd alphabet \
      && source alphabet
```

## Usage

### Commands

#### Git VCS

##### Git

###### $ ga


```sh
# Add a single file to git
$ ga <filename> # => git add <filename>
```

###### $ add

Add a file to Git VCS, commit, and push the change.

```sh
$ add <filename> && git commit -m "Add <filename>" && git push
```

#### Package Manager

##### JavaScript

###### $ build

```sh
# Build JavaScript project (auto-detects Yarn/npm)
$ build
```

###### $ clean

```sh
# Clean JavaScript project (auto-detects Yarn/npm)
$ clean
```
