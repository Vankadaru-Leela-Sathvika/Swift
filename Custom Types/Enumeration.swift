indirect enum expression{
    case operand(Int)
    case add(expression,expression)
    case subtract(expression,expression)
    case multiply(expression,expression)
    case divide(expression,expression)

    func evaluate(_ exp:expression){
        
    }
}
