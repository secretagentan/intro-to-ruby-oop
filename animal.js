class Animal {
  constructor(name, type) {
    this.name = name;
    this.type = type;
  }
  sayName() {
    return `My name is ${this.name}`;
  }
}

class Dog extends Animal {
  constructor(name) {
    super(name, 'Dog');
    this.hasFleas = true;
  }
  sayName() {
    return super.sayName() + ' Woof!';
  }
}

const d1 = new Dog('Joey');
console.log(d1.sayName());
