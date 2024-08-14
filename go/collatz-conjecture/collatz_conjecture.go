package collatzconjecture

import (
	"errors"
)

func CollatzConjecture(n int) (int, error) {
	if n < 1 {
		return 0, errors.New("error by zero or negative number")
	}

	var count int
	for n != 1 {
		count++
		if n%2 == 0 {
			n /= 2
			continue
		}

		n = 3*n + 1
	}

	return count, nil
}
