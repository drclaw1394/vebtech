# vebtech
Vim 8.0+ package for syntax high-lighting and tools for javascript files with inline CSS and HTML. Vim+Webteck=Vebtech

## Installation
1. Create the pack directory in .vim if it doesn't exist
```shell
mkdir -p ~/.vim/pack
cd ~/.vim/pack
```
2.  Clone the repo
```shell
git clone https://github.com/drclaw1394/vebtech.git
```

## Usage

In your javascript files, add a block of css text between the template quotes ``

example:
```javascript
	`
		body{
			background-color:#0a0a0a;
		}
		.myclass{
			flex-grow:1;
		}`
```

## Notes
Currently a work in progres. Debugging output is stil present, only a subset of properties enabled. No HTML support yet

