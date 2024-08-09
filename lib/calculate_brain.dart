import 'dart:math';

class CalculateBrain{

CalculateBrain({required this.height,required this.weight});
final int height;
final int weight;


late double _bmi;

String CalculateBmi(){
  _bmi = weight / pow(height/100, 2); 
 return _bmi.toStringAsFixed(1);
}


String getResult(){
  if(_bmi < 18.5){
    return 'Under Weight';
  }
  else if(_bmi >= 18.5 && _bmi <= 24.9){
    return 'Normal';
  }
  else if(_bmi >= 25 && _bmi <= 29.9){
    return 'Over Weight';
  }
  else{
    return 'Obese';
  }
}


String getInterpretation(){
   if(_bmi < 18.5){
    return 'Eat More';
  }
  else if(_bmi >= 18.5 && _bmi <= 24.9){
    return 'Keep Your Routine';
  }
  else if(_bmi >= 25 && _bmi <= 29.9){
    return 'Eat less';
  }
  else{
    return 'go to gym and diet';
  }
}
}