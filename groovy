Your Groovy program ran successfully. ✅

From the screenshot:

Plain Text
hello groovy

was printed correctly.

The warnings are:

Plain Text
WARNING: An illegal reflective access operation has occurred

These warnings happen because:

You are using Groovy 2.4.21
Your system likely has a newer Java version (Java 11/17/21)

Groovy 2.4 is old and shows compatibility warnings with newer Java versions.

Check Versions
Shell
groovy --version
java --version

Example:

Plain Text
Groovy Version: 2.4.21
Java Version: 17
Solution 1 (Ignore Warnings)

For learning Groovy, you can safely ignore these warnings:

Shell
groovy hello.groovy

The script executes correctly.

Solution 2 (Recommended)

Install a newer Groovy version:

Shell
sudo apt update
sudo apt install sdkman -y

Install SDKMAN:

Shell
curl -s "https://get.sdkman.io" | bash
source ~/.sdkman/bin/sdkman-init.sh

Install latest Groovy:

Shell
sdk install groovy

Check:

Shell
groovy --version
``
Next Practice Exercise

Create calculator.groovy

Groovy
def a = 10
def b = 20
 
def sum = a + b
 
println "Number 1 = ${a}"
println "Number 2 = ${b}"
println "Sum = ${sum}"

Run:

Shell
groovy calculator.groovy

Expected Output:

Plain Text
Number 1 = 10
Number 2 = 20
Sum = 30

After that, try this challenge without looking at the solution:

Create student.groovy

Name = Hyarel
City = Pune
Age = 25
Print all details
If age > 18 print Adult
Otherwise print Minor

This will help you practice variables, strings, and if conditions together. 🚀
