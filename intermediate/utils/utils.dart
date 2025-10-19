double getSum(List<double> numbers) => numbers.reduce((acc, cur) => acc + cur);

double getProduct(List<double> numbers) =>
    numbers.reduce((acc, cur) => acc * cur);
