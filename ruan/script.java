function notas(){
    let resultado = document.getElementById("resultado");
    let alunos= ["ana", "pedro", "rebeca", "liz", "noah"];
    let faltas = [15, 5, -1, 0, 2];

    resultado.innerHTML = "";
    for (let i = 0; i <alunos.length; i++) { 
        if (faltas[i] >= 0 && faltas[i] <= 5) {
            resultado.innerHTML += alunos[i] + ": " + faltas[i] + " faltas aprovado <br>";
        }
        if (faltas[i] > 5 && faltas[i] <= 10) {
            resultado.innerHTML += alunos[i] + ": " + faltas[i] + " faltas, esta de recuperação <br>";
        }
        if (faltas[i] > 10) {
            resultado.innerHTML += alunos[i] + ": " + faltas[i] + " faltas reprovado <br>";
        }
        if (faltas[i] < 0) {
            resultado.innerHTML += alunos[i] + ": " + faltas[i] + " faltas invalidas <br>";
        }
         
        
            
    } 
    
   
}