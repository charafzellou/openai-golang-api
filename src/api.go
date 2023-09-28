package main

import (
	"fmt"
	"io"
	"net/http"
	"strings"
)

func callOpenAi(openaiRequest string, openaiApiKey string) {
	method := "POST"
	url := "https://api.openai.com/v1/chat/completions"
	payload := strings.NewReader(`{
		"model": "gpt-3.5-turbo-16k",
		"messages": [{"role": "user", "content": "` + openaiRequest + `"}],
		"temperature": 0
	}`)
	client := &http.Client{}
	req, err := http.NewRequest(method, url, payload)
	if err != nil {
		fmt.Println(err)
		return
	}

	auth := fmt.Sprintf("Bearer %s", openaiApiKey)
	req.Header.Add("Content-Type", "application/json")
	req.Header.Add("Authorization", auth)

	res, err := client.Do(req)
	if err != nil {
		fmt.Println(err)
		return
	}
	defer res.Body.Close()

	body, err := io.ReadAll(res.Body)
	if err != nil {
		fmt.Println(err)
		return
	}
	fmt.Println(string(body))
}
