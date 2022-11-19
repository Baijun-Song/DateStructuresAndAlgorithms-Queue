import RingBuffer

public struct Queue_RingBuffer<Element> {
  var _storage: RingBuffer<Element>
  
  public init(capacity: Int) {
    _storage = RingBuffer(capacity: capacity)
  }
}

extension Queue_RingBuffer: Queue {
  public var isEmpty: Bool {
    _storage.isEmpty
  }
  
  public var count: Int {
    _storage.count
  }
  
  public var front: Element? {
    _storage.end
  }
  
  public var capacity: Int {
    _storage.capacity
  }
  
  public mutating func enqueue(_ newElement: Element) {
    _storage.write(newElement)
  }
  
  public mutating func dequeue() -> Element? {
    _storage.read()
  }
  
  @discardableResult
  public mutating func resize(to newCapacity: Int) -> Bool {
    _storage.resize(to: newCapacity)
  }
}
