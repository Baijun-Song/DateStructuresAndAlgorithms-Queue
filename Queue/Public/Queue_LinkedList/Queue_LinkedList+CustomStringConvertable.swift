extension Queue_LinkedList: CustomStringConvertible {
  public var description: String {
    guard !isEmpty else {
      return "Empty Linked-List-based Queue"
    }
    let s1 = "Linked-List-based Queue: front-> "
    let s2 = _storage.map { "\($0)" }.joined(separator: "---")
    let s3 = " <-back"
    return s1 + s2 + s3
  }
}
