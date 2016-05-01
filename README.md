# Material Design Navigation Bar

## Synopsis

Material Design Navigation Bar is an Objective C project that provides a subclass of UINavigationBar that follows the material deisgn guidlines.   



## Code Example

1.
import "materialNavBar.h" & "UIColor+BFPaperColors.h" in header file.
```objective-c
#import "materialNavBar.h"
#import "UIColor+BFPaperColors.h"
```
2.
create a "materialNavBar" variable
```objective-c
materialNavBar *navBar;
```
3.
initialize navBar variable & set paper color value 
```objective-c
navBar = [[materialNavBar alloc]init];
[navBar setMaterialColor:[UIColor paperColorPink]];
```
4.
set navigation controller navigation bar to navBar variable
```objective-c
[self.navigationController setValue: navBar forKeyPath:@"navigationBar"];
```

## Installation

Simply copy and past these files into your project:
- materialNavBar.h
- materialNavBar.m
- UIColor+BFPaperColors.h
- UIColor+BFPaperColors.m

## License
