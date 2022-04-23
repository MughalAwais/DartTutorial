void main() {
  int age = 30;
  print('Age is : ');
  print(age);
  
  String name = 'Awais';
  print('\nName is : ');
  print(name);
  
  
  String c = check();
  print(c);
  
  String t = test();
  print(t);
  
  
  //listing
  print('\n');
  List<String> ls = ['Awais, Marriam, Hamza'];
  ls.add('Avista');
  ls.remove('Avista');
  print(ls);
  print('\n');
  
  //class with constructor
  User userOne = User('Awais', 21);
  print(userOne.un);
  print(userOne.ag);
  userOne.login();
  print('\n');
  
  
  User userTwo = User('Marriam', 20);
  print(userTwo.un);
  print(userTwo.ag);
  userTwo.login();
  print('\n');
  
  superUser userThree = superUser ('Hamza', 21);
  print(userThree.un);
  print(userThree.ag);
  userThree.login();    
  userThree.publish();
  
}

String check(){
  return '\nThis works fine';
}

String test() => '\n O MY GOODNESS';

class User{
 
  String un='';
  int ag=0;  
  
  //constructor
  User(String un, int ag){
    this.un = un;
    this.ag = ag;
  }
  
  
  void login(){
    print('user logged in');
  }
}

//Super Users
class superUser extends User{
  superUser(String un, int ag) : super(un, ag);
  
  //exclusive function only userThree can acess
  void publish(){
    print ('publish updated..');
  }
}
