package collatzconjecture

import (
	"errors"
)

func CollatzConjecture(n int) (int, error) {
	var count int
	if n <= 0 {
		return 0, errors.New("error by zero or negative number")
	}
	for n != 1 {
		if n%2 == 0 {
			n /= 2
		} else {
			n = 3*n + 1
		}
		count++
	}

	return count, nil
}
