#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello World");
    }
    return 0;
}

// In the code above, the #import statement is used to import the Foundation framework, which provides access to the NSLog function used to output the "Hello World" string.

// The main function is the entry point of the program. Inside the function, the @autoreleasepool block is used to create a pool of memory that will be automatically released when the block ends. Inside the block, the NSLog function is called with the string "Hello World" as an argument, which outputs the string to the console.

