export class JSONRepairError extends Error {
  constructor(message, position) {
    super("".concat(message, " at position ").concat(position));
    this.position = position;
  }
}
//# sourceMappingURL=JSONRepairError.js.map