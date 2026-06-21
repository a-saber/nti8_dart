void main()async {
  print('hello 1');
  print('hello 2');
  Future.delayed(Duration(seconds: 2))
  .then(
      (v){
        print('hello 3');
      }
  );
  print('hello 4');
  await Future.delayed(Duration(seconds: 2));
  print('hello 5');

}

/*

process1()
process2()
process3() depends on process2
process4() hold compiler here until process4 finished
process5()
process6()

 */