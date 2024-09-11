package luhn

import (
	"regexp"
	"strings"
	"unicode"
)

func Valid(id string) bool {
	if !IsValidFormat(id) {
		return false
	}
	id = Reverse(RemoveNonDigits(id))
	return LuhnChecksum(id) == 0
}

func IsValidFormat(number string) bool {
	trimmed := strings.TrimSpace(number)
	var re = regexp.MustCompile(`^[0-9 ]+$`)
	return re.MatchString(trimmed) && len(trimmed) > 1
}

func RemoveNonDigits(str string) string {
	return strings.Map(func(r rune) rune {
		if unicode.IsDigit(r) {
			return r
		}
		return -1
	}, str)
}

func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func LuhnChecksum(str string) int {
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
