void main() {
  for (int i = 0; i < 5; i++) {
    print('Hola ${i + 1}');
  }
  
  
  var MiCoche = Coche(4);
  
  
  
  
  
  MiCoche.Update('reduce');
  MiCoche.Update(80);
  
  MiCoche.Update('');
  
  MiCoche.Update('Add');
}



class Coche { 
  
  
  int doors;
  
    Coche (this.doors){
      
      print('Este coche contiene ${this.doors} puertas');
    }
  
    Add(){
      
    
      this.doors ++;
      print('Cantidad de puertas aumenta a ${this.doors} ');
    }
  
  Reduce(){
      
      
      this.doors --;
      
    print('Cantidad de puertas se reduce a ${this.doors}');
    }
  
  Change(int doornum){
      
      
      this.doors = doornum;
      print('Este coche ahora contiene ${this.doors} puertas');
    }
  
  Update(up){
    
    if(up == 'add' || up == 'Add' || up == 'ADD'){
      Add();
    } else if(up == 'reduce' || up == 'Reduce' || up == 'REDUCE'){
      Reduce();
    }
    else if(up is int){
      Change(up);
    }
    
    
    else{
    print('Select add, reduce or introduce any number to assign a new value');  
    }
    
    
    /* 
     Queria hacer un selector 
     para escoger el tipo de cambios que haría la funcion update
     El unico detalle es aun falta completar la herramienta de selector
     LA manera seria limitando el uso solo para las opciones existentes
     y prevenir errores relacionados con seleccion
      */
    
  }
     
}