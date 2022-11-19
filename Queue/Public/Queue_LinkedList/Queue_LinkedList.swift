import List

public struct Queue_LinkedList<Element> {
  var _storage = LinkedList<Element>()
  
  public init() {}
}

extension Queue_LinkedList: Queue {
  public var isEmpty: Bool {
    _storage.isEmpty
  }
  
  public var count: Int {
    _storage.count
  }
  
  public var front: Element? {
    _storage.head?.value
  }
  
  public mutating func enqueue(_ newElement: Element) {
    _storage.append(newElement)
  }
  
  public mutating func dequeue() -> Element? {
    _storage.popFirst()
  }
}
