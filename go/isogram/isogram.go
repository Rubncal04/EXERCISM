package isogram

import (
	"strings"
	"unicode"
)

func IsIsogram(word string) bool {
	word = strings.TrimSpace(word)
	letterGroup := make(map[rune]bool)

	for _, w := range word {
		if w == ' ' || w == '-' {
			continue
		}
		w = unicode.ToLower(w)

		if letterGroup[w] {
			return false
		}
		letterGroup[w] = true
	}

	return true
}
