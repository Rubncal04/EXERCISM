package luhn

import (
	"regexp"
	"strings"
	"unicode/utf8"
)

func Valid(id string) bool {
	if !isValidFormat(id) {
		return false
	}
	id = reverse(strings.ReplaceAll(id, " ", ""))

	return luhnChecksum(id) == 0
}

func isValidFormat(number string) bool {
	trimmed := strings.TrimSpace(number)
	var re = regexp.MustCompile(`^[0-9 ]+$`)
	return re.MatchString(trimmed) && utf8.RuneCountInString(trimmed) > 1
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func luhnChecksum(str string) int {
	sum := 0
	double := false
	for _, r := range str {
		digit := int(r - '0')
		if double {
			digit *= 2
			if digit > 9 {
				digit -= 9
			}
		}
		sum += digit
		double = !double
	}
	return sum % 10
}
