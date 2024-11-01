# Using the `tree` Command in Linux and Excluding Some Files

The `tree` command in Linux is used to display directories and files in a tree-like format. To exclude certain files or directories, you can use the `-I` option followed by a pattern.

## Basic Usage

```sh
tree
```

This command will display the directory structure of the current directory.

## Excluding Files or Directories

To exclude specific files or directories, use the `-I` option:

```sh
tree -I 'pattern'
```

### Example

To exclude all `.txt` files and the `node_modules` directory:

```sh
tree -I '*.txt|node_modules'
```

In this example, the `-I` option is followed by a pattern that uses a pipe `|` to separate multiple patterns.

## Additional Options

- `-L level`: Limit the display to a specific depth of the directory tree.
- `-a`: Include hidden files.
- `-d`: List directories only.

### Example with Additional Options

To display the directory tree up to 2 levels deep, including hidden files, and excluding `.git` and `node_modules` directories:

```sh
tree -L 2 -a -I '.git|node_modules'
```

## Conclusion

The `tree` command is a powerful tool for visualizing directory structures. By using the `-I` option, you can easily exclude files or directories that you do not want to display.

For more information, refer to the `tree` command's manual page:

```sh
man tree
```

```sh
tree -I 'aws|.terraform'
```
tree -I '*.txt|node_modules'