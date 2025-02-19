"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.JSONRepairError = void 0;
class JSONRepairError extends Error {
  constructor(message, position) {
    super("".concat(message, " at position ").concat(position));
    this.position = position;
  }
}
exports.JSONRepairError = JSONRepairError;
//# sourceMappingURL=JSONRepairError.js.map