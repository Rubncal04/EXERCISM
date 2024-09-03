// Package leap provides functions for dealing with leap years
package leap

// IsLeap determines whether a given year is a leap year.
func IsLeapYear(year int) bool {
	return year%4 == 0 && (year%100 != 0 || year%400 == 0)
}
