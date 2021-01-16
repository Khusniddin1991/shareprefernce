


class User{
  String name,address;
  String email,password,phone,confirm_pass;

  User({this.email,this.password,this.name,this.address,this.phone,this.confirm_pass});

  User.from({this.email,this.password});


  User.fromJson(Map<String,dynamic> json):
      this.password=json['password'],
        this. email=json['email'],
        this.name=json['name'],
        this.address=json["address"],
        this.phone=json['phone'],
        confirm_pass=json['confirm_pass'];

  Map<String,dynamic> toJson(){

    return{ 'password':this.password,
          'email': this. email,
      'name':this.name,
      "address":this.address,
      'phone':this.phone,
      'confirm_pass':confirm_pass

    };
  }

    // 'password':this.password;









}