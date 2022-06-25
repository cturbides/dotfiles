import os
import argparse

#Definition of an argument (CLI argument) parser
parser = argparse.ArgumentParser(description="Used to get arguments")
parser.add_argument("--opt",type=int, default=0)
args = parser.parse_args()

def BrightnessUp(xvalue):
    if xvalue <= 10:
        os.system("xbacklight -inc 2")
    if xvalue >= 10:
        os.system("xbacklight -inc 10")
         
def BrightnessDown(xvalue):
    if xvalue == 2:
        return
    if xvalue <= 10:
        os.system("xbacklight -dec 2")
    if xvalue >= 11:
        os.system("xbacklight -dec 10")
        
if __name__ == '__main__':
    light_value = int(os.popen('xbacklight').read().split('.')[0])
    if args.opt == 0:
        BrightnessDown(light_value)
    else:
        BrightnessUp(light_value)