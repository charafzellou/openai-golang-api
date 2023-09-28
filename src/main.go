package main

import (
	"log"
	"os"
)

func main() {
	ASCIIloader()
	Separator()

	openaiApiKey, openaiApiKey_isSet := os.LookupEnv("OPENAI_API_KEY")
	if !openaiApiKey_isSet {
		log.Fatal("OPENAI_API_KEY is not set")
	}

	callOpenAi("Say Hi!", openaiApiKey)
	Separator()
}
