## Description

For this application, we propose an implementation to build only the screen with `SwiftUI`.

<br>

## Architecture

### Transition

![](https://user-images.githubusercontent.com/24838521/186085838-1fb5e991-58df-4adf-805a-14e6ae449634.png)

Screen transitions are controlled by `UIKit (UIHostingController)`.

![](https://user-images.githubusercontent.com/24838521/186085879-c3e495ac-6a8a-417d-892f-6a26d1f2dc95.png)

Receives only screen transition operations from `ViewModel`.

<br>

### Business logic

![](https://user-images.githubusercontent.com/24838521/186085867-69ff2a12-7cc0-4347-b277-e27be74d5d64.png)

Logic is implemented in `MVVM`.

(However, this does not have to be MVVM.)


<br>

## Demo

https://user-images.githubusercontent.com/24838521/186085550-e9389e0e-d417-4037-b829-75dba9457c51.mov

