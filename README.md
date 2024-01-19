# Projektni zadatak - Matrix Digital Rain

This Perl script creates an animated Matrx Digital rain using the Tk module. Colorful characters fall from the top of the window to the bottom, creating a dynamic and visually appealing effect. 

## Prerequisites

Make sure you have Perl installed on your system. Additionally, you need to install the Tk and List::Util modules if you haven't already:

```bash
cpan install Tk
cpan install List::Util
```
## How to Run
1. Clone the repository or download the Perl 
2. Open a terminal and navigate to the script's directory.
3. Run the script using the following command:

```bash
perl Matrix.pl
```

## Customization

Feel free to customize the script according to your preferences. You can adjust the number of rows and columns, change the characters that fall, modify the colors, and experiment with the animation speed.

```perl
# Customize rows and columns
my ($rows, $cols) = (30, 60);

# Customize falling characters
my @text = shuffle 'a'..'z', 'A'..'Z', '0'..'9', qw(! @ # $ % ^ & *);

# Customize animation speed (milliseconds)
$mWindow->after(69, \&animate);
```

### TroubleShooting

While working on this project I have came accros some problems while trying to install Tk modul. Doing following seemd to work for me on Linux Ubuntu 22.04.3 LTS. 
```bash
sudo apt-get update
sudo apt-get install pkg-config
sudo apt-get install libx11-dev
cpan install Tk
```
Additionally, it may be necessary to add the appropriate paths (PATH) to ensure the correct recognition of installed modules.
Program has not been tested on Windows.

## Acknowledgments
This script utilizes the Tk module for creating graphical user interfaces in Perl.
The List::Util module is used for shuffling characters.


## Author
This project was developed by [acet3p](https://github.com/AceTep).
Link to video example is [here](https://youtu.be/L950dl9gUrs).
