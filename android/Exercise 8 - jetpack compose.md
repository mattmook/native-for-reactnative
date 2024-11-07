# Exercise – jetpack compose

Create a simple Jetpack Compose view

## Requiements

Display a book with a title, description, image and optional star rating

Use https://dribbble.com/shots/22519480-Readify-Ebook-Reader-App as inspiration.

## Helpful references

- [Jetpack Compose Cheatsheet: Quick Guide to Modern Android UI Development](https://blog.stackademic.com/0f24b5d6b7fe)


## Instructions

1.  Create a new project in Android Studio.
    -   File > New > New Project…
    -   Select Empty Activity
    -   Expand `app > kotlin+java > com.example.myapplication

1.  Update rendering in MainActivity
    -   Rename Greeting to Book
    -   Alter Book to have parameters for title, author, image and nullable star rating.
    -   To import an image, either:
        
        -   File > New > Vector Asset
        -   Choose Asset type: Local file and navigate to android/book1.svg
        
        or
        
        -   Copy `android/app/src/main/res/drawable/book1.xml` from the main project into this one
        
        Then the image can be rendered with `Image(painterResource = R.drawable.book1)`
        
    -   Update the contents of body to render your layout, with star rating rendered on top of the image.
