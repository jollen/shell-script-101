
## SED

sed -n '/error/flag'

Where the ```flag``` are:

* p: Prints the line
* g: Replace all matches
* i: Match in a case-insensitive manner
* d: Deletes the line

sed -n 's/pattern1/pattern2/flag'

* s: Substitutes the first occurrence of pattern1 with pattern2

sed -n '10s/hi/Hello/gp'
sed -n 's/hi/Hello/gp'
sed -n '9,10s/hi/Hello/gp'

## Pattern

* ^: ```sed -n 's/^hi/pattern2/flag'```
* $: ```sed -n 's/^hi$/pattern2/flag'```
* .:
* *:  ```sed -n 's/^hi*/pattern2/flag'```
* [chars]:  ```sed -n 's/^[a-zA-Z]/pattern2/flag'```
* [[:class:]]
