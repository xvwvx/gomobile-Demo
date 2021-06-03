package mobile

import "fmt"

func SayHello() {
      fmt.Println("Hello Mobile")
}

func SayHelloWithParams(name string) {
      fmt.Println("Hello", name)
}

func SayHelloWithParamsAndReturn(name string) string {
      return "Hello" + name
}

func SayHelloWithParamsAndReturnAndException(name string) (string, 
error) {
      return "Hello" + name, fmt.Errorf("some error")
}

type Type int

const (
	Type1  = Type(iota)
	Type2
	Type3
)

// Printer types can print things.
type Printer interface {
	PrintSomething(s string)
}
// Greeter greets people.
type Greeter struct {
	printer Printer
	Value string
	Value1 int32
	Value2 *int32
	Value11 []string
	Value12 *[]string
	Value13 []*string
	Type1 Type
}
// NewGreeter makes a new Greeter.
func NewGreeter(printer Printer) *Greeter {
	return &Greeter{
		printer: printer,
	}
}

// Greet greets someone.
func (g *Greeter) Greet(name string) {
	g.printer.PrintSomething("Hello " + name)
}


