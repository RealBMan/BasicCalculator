//This is a basic calculator program I made and designed for my culminating project
//It is able to run the basic math opertaions such as Addition, Subtraction, Multiplication and Division
//It is able to run these basic operations for single digit numers
//It works by chosing the first number, then second number and the operation you want and then the equal to display the answer in the display screen
//You have to click the operation symbol first before hitting the equal to button to ensure that the answer value is saved and the right anwer is portrayed on screen
//It works simlilarly to an actual calculator

int [][] calc = new int [4][4];//This is a 2D Array that is used for the buttons of the clacuator

int screen = 0;//This is the inital screen value of the calculator

int count;//This is a counting variable that controls when the screen is switched

int clickedX, clickedY;//This is the variable for the mouse location on the screen

int num;//This is the number value for the first number that is pressed

int num2;//This is the number value for the second number that is pressed

float ans;//This is the answer value that appears on screen when a the equal button is pressed

float ans2;//This thu=is answer value that controls the answer of the number operations

String func;//This is the string value to amke the operator button appear

int dis1X, dis1Y, dis1W, dis1H;//The variables for heaight, width and x and y location of the display rectangle


void setup() {

  size(400, 600);

  //These codes declare the value for some of the variables
  func = " + ";

  num = 0;

  dis1X = 25;
  dis1Y = 20;

  dis1W = 350;
  dis1H = 150;

  buttonAllo();//This runs the function for the button value allocation
}

void draw() {

  background(0, 255, 20);

  calculatorB();//This runs the function to draw the buttons on the calculator it runs a for loop to draw the the buttons like a grid

  calculatorB2();//This runs the function to draw the buttons on the calculator it runs a for loop to draw the the buttons like a grid

  rect(dis1X, dis1Y, dis1W, dis1H, 20);//This draws the display rectangle at the top of the screen using variables

  fill(0);//Sets the colour of the text

  textSize(50);

  //This draws the number and math operator values on the display screen
  text(num, 200, 90);

  text(func, 245, 90);

  text(num2, 320, 90);

  text(ans, 185, 150);

  //The  colour of the display screen
  fill(255);
}  

void mousePressed() {

  clickedX = mouseX/100;//This is the index location for the mouse which enable the user to clcik
  clickedY = (mouseY-200)/100;//I had to subtract 20 because the grid does to not take up the whole page. By sutracting 20 allows the mouse to his the boxes and it prevents it from clicking above the box

  count++;//This is the counting variable that counts up each time the screen is switched

  if (screen == 0) {//This is the if statement that controls hwat happens when a button is clicked. This is the if statement for when the screen is on the initial screen
    if (calc[clickedX][clickedY] == 0) {//This is what happens when the 0 button is clicked. It draws the the number on the display screen.
    } else if (calc[clickedX][clickedY] == 1) {//This is what happens when the 1 button is clicked. It draws the the number on the display screen.
      num = 1;
    } else if (calc[clickedX][clickedY] == 2) {//This is what happens when the 2 button is clicked. It draws the the number on the display screen.
      num = 2;
    } else if (calc[clickedX][clickedY] == 3) {//This is what happens when the 3 button is clicked. It draws the the number on the display screen.
      num = 3;
    } else if (calc[clickedX][clickedY] == 4) {//This is what happens when the 4 button is clicked. It draws the the number on the display screen.
      num = 4;
    } else if (calc[clickedX][clickedY] == 5) {//This is what happens when the 5 button is clicked. It draws the the number on the display screen.
      num = 5;
    } else if (calc[clickedX][clickedY] == 6) {//This is what happens when the 6 button is clicked. It draws the the number on the display screen.
      num = 6;
    } else if (calc[clickedX][clickedY] == 7) {//This is what happens when the 7 button is clicked. It draws the the number on the display screen.
      num = 7;
    } else if (calc[clickedX][clickedY] == 8) {//This is what happens when the 8 button is clicked. It draws the the number on the display screen.
      num = 8;
    } else if (calc[clickedX][clickedY] == 9) {//This is what happens when the 9 button is clicked. It draws the the number on the display screen.
      num = 9;
    } else if (calc[clickedX][clickedY] == 10) {//This is what happens when the reset button is clicked. It runs the reset functions and sets everything to 0
      resetSC1();
    } else if (calc[clickedX][clickedY] == 11) {//This is what happens when the equal button is clicked. It displays the answer by storing the answer from the function in the display answer vairable
      ans = ans2;
    } else if (calc[clickedX][clickedY] == 12) {//This is what happens when the add button is clicked. It adds the two numbers to together and stores it in a variable
      func = " + ";
      ans2 = num + num2;
    } else if (calc[clickedX][clickedY] == 13) {//This is what happens when the subtarct button is clicked. It adds the two numbers to together and stores it in a variable
      func = " - ";
      ans2 = num - num2;
    } else if (calc[clickedX][clickedY] == 14) {//This is what happens when the multiply button is clicked. It multiplies the two numbers to together and stores it in a variable
      func = " * ";
      ans2 = num * num2;
    } else if (calc[clickedX][clickedY] == 15) {//This is what happens when the divide button is clicked. It divides the two numbers to together and stores it in a variable
      func = " / ";
      ans2 = (float)num / num2;//This keeps decimals with the answer to make it more accurate
    }
    if (count == 1) {//This is an if statement that states once the count varibale has gone up to 1 (when a number has been clicked) it changes screen so that the second number can be chosen

      screen = 1;
    }
  } else if ( screen == 1) {//This is an if statement that states once the screen has been switched it runs the button clicked function for the second screen
    logic();//Button clicked function for the second screen
  }
}

void calculatorB() {//This is the function that draws the buttons as grid like for the calculator

  if (screen == 0) {//This is the for loop code for sceen 1

    for (int k = 0; k < calc.length; k++) {//This is the counting variable Y - Coordinate of the box. It counts up to 4 which is the height of the grid. Meaning it runs the code 4 times

      for (int j = 0; j < calc.length; j++) {//This is the counting variable X - Coordinate of the box. It counts up to 4 which is the height of the grid. Meaning it runs the code 4 times

        fill(255);//This is the colour of the grid

        rect(j * 100, 200 + k * 100, 100, 100, 20);//This is the rect draw code for the gird

        if (calc[j][k] == 0) {//This is as an if statement that controls what text is diplayed on each box and not all of them would be numbers. If the box is O display 0 on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("0", 38 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 1 ) {//If the box is 1 display 1 on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("1", 38 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 2 ) {//If the box is 2 display 2 on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("2", 38 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 3 ) {//If the box is 3 display 3 on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("3", 38 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 4 ) {//If the box is 4 display 4 on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("4", 38 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 5 ) {//If the box is 5 display 5 on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("5", 38 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 6 ) {//If the box is 6 display 6 on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("6", 38 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 7 ) {//If the box is 7 display 7 on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("7", 38 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 8 ) {//If the box is 8 display 8 on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("8", 38 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 9 ) {//If the box is 9 display 9 on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("9", 38 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 10 ) {//If the box is 10 array value display CLR on the box
          textSize(35);//Text Size

          fill(0);//Colour of the Text

          text("CLR", 18 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 11 ) {//If the box is 11 array value display = on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("=", 38 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 12 ) {//If the box is 12 array value display + on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("+", 38 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 13 ) {//If the box is 13 array value display - on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("-", 38 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 14 ) {//If the box is 14 array value display * on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("*", 38 + j *100, 256+ k * 100);//Text drawn and the location
        } else if (calc[j][k] == 15 ) {//If the box is 15 array value display / on the box
          textSize(40);//Text Size

          fill(0);//Colour of the Text

          text("/", 38 + j *100, 256+ k * 100);//Text drawn and the location
        }

        fill(255);//Display screen and button colour
      }
    }
  }
}

void calculatorB2() {//This is the function that draws the buttons as grid like for the calculator

  if (screen == 1) {//This is the for loop code for sceen 1

    for (int k = 0; k < calc.length; k++) {//This is the counting variable Y - Coordinate of the box. It counts up to 4 which is the height of the grid. Meaning it runs the code 4 times

      for (int j = 0; j < calc.length; j++) {//This is the counting variable X - Coordinate of the box. It counts up to 4 which is the height of the grid. Meaning it runs the code 4 times

        fill(255);//This is the colour of the grid

        rect(j * 100, 200 + k * 100, 100, 100, 20);//This is the rect draw code for the gird

        if (calc[j][k] == 0) {//This is as an if statement that controls what text is diplayed on each box and not all of them would be numbers. If the box is O display 0 on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("0", 38 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 1 ) {//If the box is 1 display 1 on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("1", 38 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 2 ) {//If the box is 2 display 2 on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("2", 38 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 3 ) {//If the box is 3 display 3 on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("3", 38 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 4 ) {//If the box is 4 display 4 on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("4", 38 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 5 ) {//If the box is 5 display 5 on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("5", 38 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 6 ) {//If the box is 6 display 6 on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("6", 38 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 7 ) {//If the box is 7 display 7 on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("7", 38 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 8 ) {//If the box is 8 display 8 on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("8", 38 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 9 ) {//If the box is 9 display 9 on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("9", 38 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 10 ) {//If the box is 10 array value display CLR on the box
          textSize(35);//Text Size

          fill(0);//Text Colour

          text("CLR", 18 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 11 ) {//If the box is 11 array value display = on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("=", 38 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 12 ) {//If the box is 12 array value display + on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("+", 38 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 13 ) {//If the box is 13 array value display - on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("-", 38 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 14 ) {//If the box is 14 array value display * on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("*", 38 + j *100, 256+ k * 100);//Text drawn and location
        } else if (calc[j][k] == 15 ) {//If the box is 13 array value display / on the box
          textSize(40);//Text Size

          fill(0);//Text Colour

          text("/", 38 + j *100, 256+ k * 100);//Text drawn and location
        }

        fill(255);//Display screen and button colour
      }
    }
  }
}

void logic() {
  //This is the if statement that controls hwat happens when a button is ciliekd. This is the if statement for when the screen is on the second screen
  if (calc[clickedX][clickedY] == 0) {//This is what happens when the 0 button is clicked. It draws the the number on the display screen.
  } else if (calc[clickedX][clickedY] == 1) {//This is what happens when the 1 button is clicked. It draws the the number on the display screen.
    num2 = 1;
  } else if (calc[clickedX][clickedY] == 2) {//This is what happens when the 2 button is clicked. It draws the the number on the display screen.
    num2 = 2;
  } else if (calc[clickedX][clickedY] == 3) {//This is what happens when the 3 button is clicked. It draws the the number on the display screen.
    num2 = 3;
  } else if (calc[clickedX][clickedY] == 4) {//This is what happens when the 4 button is clicked. It draws the the number on the display screen.
    num2 = 4;
  } else if (calc[clickedX][clickedY] == 5) {//This is what happens when the 5 button is clicked. It draws the the number on the display screen.
    num2 = 5;
  } else if (calc[clickedX][clickedY] == 6) {//This is what happens when the 6 button is clicked. It draws the the number on the display screen.
    num2 = 6;
  } else if (calc[clickedX][clickedY] == 7) {//This is what happens when the 7 button is clicked. It draws the the number on the display screen.
    num2 = 7;
  } else if (calc[clickedX][clickedY] == 8) {//This is what happens when the 8 button is clicked. It draws the the number on the display screen.
    num2 = 8;
  } else if (calc[clickedX][clickedY] == 9) {//This is what happens when the 9 button is clicked. It draws the the number on the display screen.
    num2 = 9;
  } else if (calc[clickedX][clickedY] == 10) {//This is what happens when the reset button is clicked. It runs the reset functions and sets everything to 0
    resetSC2();
  } else if (calc[clickedX][clickedY] == 11) {//This is what happens when the equal button is clicked. It displays the answer by storing the answer from the function in the display answer vairable
    ans = ans2;
  } else if (calc[clickedX][clickedY] == 12) {//This is what happens when the add button is clicked. It adds the two numbers to together and stores it in a variable
    func = " + ";
    ans2 = floor(num + num2);
  } else if (calc[clickedX][clickedY] == 13) {//This is what happens when the subtarct button is clicked. It adds the two numbers to together and stores it in a variable
    func = " - ";
    ans2 = floor(num - num2);
  } else if (calc[clickedX][clickedY] == 14) {//This is what happens when the multiply button is clicked. It multiplies the two numbers to together and stores it in a variable
    func = " * ";
    ans2 = floor(num * num2);
  } else if (calc[clickedX][clickedY] == 15) {//This is what happens when the divide button is clicked. It divides the two numbers to together and stores it in a variable
    func = " / ";
    ans2 = (float) num / num2;//This keeps decimals with the answer to make it more accurate
  }
}

void buttonAllo() {

  //This code assigns the array value of each button to a number value to make the button clicked code easier to compute and run
  //Coincidently that button number alligns with the arrya value this is is becasue the calculator starts counting at 0
  //This made it much easier to code and declare varibles

  calc[0][0] = 0; //Array location for button 0
  calc[1][0] = 1; //Array location for button 1
  calc[2][0] = 2; //Array location for button 2
  calc[3][0] = 3; //Array location for button 3

  calc[0][1] = 4; //Array location for button 4
  calc[1][1] = 5; //Array location for button 5
  calc[2][1] = 6; //Array location for button 6
  calc[3][1] = 7; //Array location for button 7

  calc[0][2] = 8; //Array location for button 8
  calc[1][2] = 9; //Array location for button 9
  calc[2][2] = 10; //Array location for button CLR
  calc[3][2] = 11; //Array location for button =

  calc[0][3] = 12; //Array location for button +
  calc[1][3] = 13; //Array location for button -
  calc[2][3] = 14; //Array location for button *
  calc[3][3] = 15; //Array location for button /
}

void resetSC1 () {//This is a reset function that resets the value of the all the numbers when the the Clear button is pressed on screen 0

  num = 0;//Resest the number value
  num2 = 0;//Resets the second number value
  ans = 0;//Resets the answer value 
  count = 0;//Resets the count varible
  ans2 = 0;//Resets the second answer variables
}

void resetSC2 () {//This is a reset function that resets the value of the all the numbers when the the Clear button is pressed on screen 2

  num = 0;//Resest the number value
  num2 = 0;//Resets the second number value
  ans = 0;//Resets the answer value 
  count = 0;//Resets the count varible
  screen = 0;//Resets the screen back to the orginal
  ans2 = 0;//Resets the second answer variable
}
