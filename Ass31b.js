var n=prompt("Enter a number");
sq=0;
m="";

for(i=1;i<=n;i++){
    sq+=i ;
    m+=i;
    
sq+=i*i;
m+=i*i + "\n";
}
alert("square is \n"+ m  + "=" + sq  );

