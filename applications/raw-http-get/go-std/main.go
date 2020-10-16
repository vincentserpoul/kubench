package main

import (
	"net/http"
)

func main() {
	http.HandleFunc("/", sayHello)

	if err := http.ListenAndServe(":8080", nil); err != nil {
		panic(err)
	}
}

func sayHello(w http.ResponseWriter, r *http.Request) {
	if _, err := w.Write([]byte("!")); err != nil {
		panic(err)
	}
}
