package main

import (
    "fmt"
    "net/http"
    "strconv"
)

func handler(w http.ResponseWriter, r *http.Request) {
    a := 5
    b := 7
    result := Sum(a, b)
    fmt.Fprintf(w, "Hello from Dockerized Go App!\nSum of %d and %d is %d", a, b, result)
}

func main() {
    http.HandleFunc("/", handler)
    fmt.Println("Server running on port 8080...")
    http.ListenAndServe(":8080", nil)
}
