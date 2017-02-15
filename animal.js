class Animal {
  constructor(name, type) {
    this.name = name;
    this.type = type;
  }
  sayName() {
    return `My name is ${this.name}`;
  }
}

module.exports = Animal;
