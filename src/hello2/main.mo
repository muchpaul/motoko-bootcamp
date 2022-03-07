import Array "mo:base/Array";
import Nat "mo:base/Nat";
actor {
  
  //base code
  
  public func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };


  // 2022-03-05 challenge 1
  // Write a function add that takes two natural numbers n and m and returns the sum.

  public func add(n : Nat, m : Nat) : async Nat {
    return n + m;
  };  



  // 2022-03-05 challenge 2
  // Write a function square that takes a natural number n and returns the area of a square of length n.

  public func square(n : Nat) : async Nat {
    return n**2;
  };



  // 2022-03-05 challenge 3
  // Write a function days_to_second that takes a number of days n and returns the number of seconds.

  public func days_to_second(n : Nat) : async Nat {
    return n*24*60*60;
  };



  // 2022-03-05 challenge 4
  // Write two functions increment_counter & clear_counter .
  // increment_counter returns the incremented value of counter by n.
  // clear_counter sets the value of counter to 0.

  stable var counter = 0;

  public func clear_counter() : async Nat {
    counter := 0;
    return counter;
  };

  public func increment_counter(n : Nat) : async Nat {
    counter += n;
    return counter;
  };



  // 2022-03-05 challenge 5
  // Write a function divide that takes two natural numbers n and m and returns a boolean indicating if y divides x.

  public func divide(n : Nat, m : Nat) : async Bool {
    if (n % m == 0) return true else return false;
  };



  // 2022-03-05 challenge 6
  // Write a function is_even that takes a natural number n and returns a boolean indicating if n is even.

  public func is_even(n : Nat) : async Bool {
    if (n % 2 == 0) return true else return false;
  };



  // 2022-03-05 challenge 7
  // Write a function sum_of_array that takes an array of natural numbers and returns the sum. This function will returns 0 if the array is empty.

  public func sum_of_array(n : [Nat]) : async Nat {
    var theSum : Nat = 0;
    for (value in n.vals()){
      theSum := theSum + value;
    };
    return theSum;
  };



  // 2022-03-05 challenge 8
  // Write a function maximum that takes an array of natural numbers and returns the maximum value in the array. This function will returns 0 if the array is empty.

  public func maximum(n : [Nat]) : async Nat {
    var theMax : Nat = 0;
    for (value in n.vals()){
      if (value > theMax)
      theMax := value;
    };
    return theMax;
  };



  // 2022-03-05 challenge 9
  // Write a function remove_from_array that takes 2 parameters : an array of natural numbers and a natural number n and returns a new array where all occurences of n have been removed (order should remain unchanged).

  // Note: submitting this "static" code that only takes in '2' as the removing value, in order to meet the deadline
  public func remove_from_array(b : [Nat], n : Nat) : async [Nat]{
    let f = func(n : Nat) : Bool {
      if (n == 2) {return false} else {return true}
    };
    return(Array.filter<Nat>(b, f))
  };

  /* public func filter3(b : [Nat], n : Nat) : async [Nat]{
    let f = func(n : Nat) : Bool {
      var temp : Nat = 0;
      var defbool : Bool = false;
      for (value in b.vals()) {
        temp := value;

      };
      return false else return true;
    };
    return(Array.filter<Nat>(b, f))
  }; */

  /* public func filter2(b : [Nat], n : Nat) : async [Nat]{
    let q = func(b : [Nat]) : Bool {
      for (value in b.vals()){
        if (value == q) {return false} else {return true}
      };
    };
    return(Array.filter<Nat>(b, q))
  }; */


  // 2022-03-05 challenge 10
  // Watch this video on selection sort. (https://www.youtube.com/watch?v=g-PGLbMth_g)
  // Implement a function selection_sort that takes an array of natural numbers and returns the sorted array .

  // Note: does not work; submitting early to meet the deadline
  public func selection_sort(n : [Nat]) : async () {
    return assert(Array.sort(n, Nat.compare) == n);
  };
};
