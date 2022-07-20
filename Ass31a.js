
var n=prompt("Enter a number");
fib1=0;
fib2=1;
    console.log(fib1 + "\n" + fib2);
    document.write("The fibonacci series upto " + n + " is <br />");
    document.write(fib1+"<br />" + fib2 + "<br />");
    for(i=3;i<=n;i++)
    {
        fib3=fib1+fib2;
        document.write(fib3 + "<br />")
        fib1=fib2;
        fib2=fib3;
    }
    

    
