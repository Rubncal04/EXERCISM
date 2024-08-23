package techpalace

import (
	"strings"
)

// WelcomeMessage returns a welcome message for the customer.
func WelcomeMessage(customer string) string {
	return "Welcome to the Tech Palace, " + strings.ToUpper(customer)
}

// AddBorder adds a border to a welcome message.
func AddBorder(welcomeMsg string, numStarsPerLine int) string {
	asterisk := strings.Repeat("*", numStarsPerLine)
	return asterisk + "\n" + welcomeMsg + "\n" + asterisk
}

// CleanupMessage cleans up an old marketing message.
func CleanupMessage(oldMsg string) string {
	cleanedMessage := strings.ReplaceAll(oldMsg, "*", "")
	return strings.TrimSpace(cleanedMessage)
}
