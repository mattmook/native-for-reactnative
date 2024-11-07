# Exercise – library book manager

Create a simple system to manage a library’s collection of books. You must manage a list of 
library books, calculate the total number of pages, and provide a summary of the collection.


## Helpful references

- [Kotlin is like TypeScript](https://gi-no.github.io/kotlin-is-like-typescript/)
- [Kotlin vs. TypeScript: A Comparison of Two Modern Languages](https://dopebase.com/kotlin-typescript-comparison-modern-languages)


## Instructions

1.  Create a new project in Android Studio.
    -   File > New > New Project…
    -   Select Empty Activity
    -   Expand `app > kotlin+java > com.example.myapplication
    -   Add a new Kotlin Class/File called Main

1.  Define a Book data class with the following properties:
    -   title (String)
    -   author (String)
    -   pages (nullable Int)

1.  Create a Library class that includes the following
    -   A list of books (books)
    -   A function addBook(book: Book) to add a book to the collection
    -   A function totalPages(): Int that returns the total number of pages, skipping books with unknown pages (null).
    -   A function bookSummary() that prints a summary of all books, including their title, author, and pages (or "Unknown" if pages are not provided).
    -   Optional bonus: Allow users to search books by (partial) title.
    -   Optional bonus: Create a Genre enum with values for Fiction, NonFiction and Sceince

1.  Create a main function
    -   Add a main function with `fun main() { … }`
    -   Create a few books (some with unknown page counts)
    -   Add these books to the library
    -   Calculate and print the total number of pages
    -   Print a summary of all books
    -   The following can be used to provide this functionality:
        
        ```
        fun main() {
            // Create some books
            val hobbit = Book(title = "The Hobbit", author = "J.R.R. Tolkien", pages = 310)
            val kotlinBook = Book(title = "Kotlin for Beginners", author = "Jane Doe" pages = null) // Unknown pages
            val effectiveJava = Book(title = "Effective Java", author = "Joshua Bloch", pages = 416)

            // Create the library
            val library = Library()

            // Add books to the library
            library.addBook(hobbit)
            library.addBook(kotlinBook)
            library.addBook(effectiveJava)

            // Print book summary
            println("\nLibrary Book Summary:")
            library.bookSummary()

            // Calculate and print the total number of pages
            val total = library.totalPages()
            println("\nTotal Pages: $total")

            println(library.findByTitle("Kotlin"))
        }
        ```
