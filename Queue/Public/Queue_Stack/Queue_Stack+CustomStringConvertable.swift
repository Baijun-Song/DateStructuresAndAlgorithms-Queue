extension Queue_Stack: CustomStringConvertible {
  public var description: String {
    guard !isEmpty else {
      return "Empty Stack-based Queue"
    }
    var copy = self
    var elements: [Element] = []
    elements.reserveCapacity(copy.count)
    while let element = copy.dequeue() {
      elements.append(element)
    }
    
    let s1 = "Stack-based Queue: front-> "
    let s2 = elements.map { "\($0)" }.joined(separator: "---")
    let s3 = " <-back"
    return s1 + s2 + s3
  }
}
