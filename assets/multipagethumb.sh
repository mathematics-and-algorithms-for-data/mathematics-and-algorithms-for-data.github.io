# montage -gravity center null: null: 'supplemental_opt.pdf' null: null:
# -thumbnail 128x128 -sharpen 10 -bordercolor white -border 0 -background none
# +polaroid -set label '' -background Transparent -tile x1 -geometry -0+64
# -reverse -flop png:- | convert png:- -flop -trim output.png
if [ $# -lt 2 ]
  then
  echo "Usage:"
  echo "  ./multipagethumb input.pdf output.png"
  exit 1
fi

output="${2%.*}"
## this occassionally gives a concatentation of number of pages number of pages
## times: 10101010101010101010
#n=`identify -format %n $1`
n=`mdls -name kMDItemNumberOfPages -raw "$1"`
#`pdftk $1 dump_data | grep NumberOfPages | sed 's/[^0-9]*//'`

# 88+12+30*16 = 580
w="188"
x="130"
y="23"

let a=500-w
let b=n-1
let x=a/b

if ((x > w))
then
  let x=w/2
fi

echo $a
echo $b
echo $x

upDownFlag=0

for p in $(seq 1 $n)
do
  p=`echo "$p-1"|bc`
  echo "convert $1[$p] -flatten -thumbnail ${w}x -bordercolor none -border 0 \( +clone \
    -background none -shadow 180x3+2+2 \) +swap -background none -layers \
    merge +repage  $output-$p.png"
  convert $1[$p] -colorspace RGB -flatten -thumbnail ${w}x -bordercolor none -border 0 \( +clone \
    -background black -shadow 80x3+2+2 \) +swap -background none -layers \
    merge +repage  $output-$p.png
  if ((upDownFlag)) # Test for True
  then
    grav="NorthEast"
  fi
  if ! ((upDownFlag)) # Test for True
  then
    grav="SouthEast"
  fi
  if [[ $p == "0" ]]
  then
    echo "convert $output-$p.png $2"
    convert $output-$p.png -background none -splice 0x${y} $2
  else
    echo "convert $output.png -gravity $grav -background none -splice ${x}x${y} $output.png"
    convert $output.png -gravity $grav -background none -splice ${x}x0 $output.png
    echo "composite -compose dst-over $output-$p.png $output.png -gravity $grav $output.png"
    composite -compose dst-over $output-$p.png $output.png -gravity $grav $output.png
  fi
  upDownFlag=$((1-upDownFlag))
  # echo $upDownFlag
  rm $output-$p.png
done

echo convert $output.png -background white -flatten $output.jpg
convert $output.png -background white -flatten $output.jpg
