import Stack

public struct Queue_Stack<Element> {
  var _enqueueStack = Stack<Element>()
  var _dequeueStack = Stack<Element>()
  
  public init() {}
}

extension Queue_Stack: Queue {
  public var isEmpty: Bool {
    _enqueueStack.isEmpty && _dequeueStack.isEmpty
  }
  
  public var count: Int {
    _enqueueStack.count + _dequeueStack.count
  }
  
  public var front: Element? {
    if _dequeueStack.isEmpty {
      return _enqueueStack.__bottom
    } else {
      return _dequeueStack.top
    }
  }
  
  public mutating func enqueue(_ newElement: Element) {
    _enqueueStack.push(newElement)
  }
  
  public mutating func dequeue() -> Element? {
    if _dequeueStack.isEmpty {
      while let element = _enqueueStack.pop() {
        _dequeueStack.push(element)
      }
    }
    return _dequeueStack.pop()
  }
}

extension Stack {
  fileprivate var __bottom: Element? {
    var copy = self
    var bottom: Element?
    while let element = copy.pop() {
      bottom = element
    }
    return bottom
  }
}
