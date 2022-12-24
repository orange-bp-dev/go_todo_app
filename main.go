package main

import (
	"context"
	"log"
)

func main() {
	if err := run(context.Background()); err != nil {
		log.Printf("failed to terminate server: %v", err)
	}
}