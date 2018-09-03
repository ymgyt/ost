package main

import (
	"fmt"

	"github.com/ymgyt/ost/proto"
)

func main() {
	task := proto.Task{Name: "sample"}
	fmt.Printf("%#v\n", task)
}
