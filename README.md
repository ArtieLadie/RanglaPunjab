# RanglaPunjab

R code that defines color palettes based on the unique, vibrant culture of Punjab, India]. 

Rangla Punjab translates to "Colorful Punjab".

And if you ever visit India, [Rangla Punjab](https://haveli.co/rangla-punjab/) is a wonderful Punjabi theme village of generations gone by. 

In the meantime, enjoy this R package :-)

## Creation Platform

**OS:** Windows 10

**R:** 3.5.0

**RTools35**

**RStudio:** 1.1.453


## Installation

To install stable CRAN version
```r
install.packages("RanglaPunjab")
```

To install the latest development version from GitHub (highly recommended)
```r
install.packages("devtools")
devtools::install_github("ArtieLadie/RanglaPunjab")
```

## Functions

### ListPalette()

Lists all 24 palettes

```r
> ListPalette()
 [1] "FieldsOfPunjab"       "FieldsOfPunjab2"        "GoldenTemple"           "GoldenTemple2"         
 [5] "Pindh"                "Haveli"                 "Haveli2"                "AmritsariKulcha"       
 [9] "CholeBhature"         "BiryaniRice"            "AmritsariLassi"         "AmritsariPedeWaliLassi"
[13] "Kulfi"                "SohniMahiwal"           "HeerRanjha"             "Gidha"                 
[17] "Gidha2"               "Teej"                   "Phulkari"               "Phulkari2"             
[21] "Jutti"                "Jutti2"                 "Jutti3"                 "Paranda" 
```

### RanglaPunjab(name)

Input 1 palette, return vector of colors

```r
> RanglaPunjab("GoldenTemple")
[1] "#bdcad0" "#5f8abf" "#ffd860" "#d88821" "#672006"
```

### MergePalette(name, name2, name3)

Input 2 to 3 palettes to merge into new palette

```r
MergePalette("AmritsariKulcha", "Phulkari2")
[1] "#e3e4d9" "#ebdc9c" "#b3340e" "#67140a" "#2a231d" "#9c1a41" "#42a4e8" "#3a35da" "#ee523c" "#3e167c"
```

### PaintPalette(name, name2, name3)

Input 1 to 3 palettes to display their colors on screen

```r
> PaintPalette("FieldsOfPunjab","Jutti","Paranda")
```
![Paint Palette](https://github.com/ArtieLadie/RanglaPunjab/blob/master/vignettes/paintpalette.jpg)

### CherryPickPalette(name, name2, name3, name4, name5) <-- UNDER CONSTRUCTION

Input 2 to 5 palettes to visually select colors to create new palette

### ShowPalettePhoto(name)

Input 1 palette to display that photo that inspired these colors

```r
> ShowPalettePhoto("Jutti3")
```

![Jutti 3](https://github.com/ArtieLadie/RanglaPunjab/blob/master/vignettes/jutti3.jpg)

# Palettes

### Fields of Punjab

Punjab translates to "Land of Five Rivers". 

These rivers refer to the rivers Jhelum, Chenab, Ravi, Sutlej, and Beas. 

All are tributaries of the Indus River, the Chenab being the largest. 

The five rivers makes Punjab one of the most fertile regions of India. 

Plus the fields provide beautiful backdrop to [Bollywood films](https://www.news18.com/news/lifestyle/10-bollywood-films-that-will-make-you-love-punjab-even-more-1019780.html).

```r
ShowPalettePhoto("FieldsOfPunjab")
```

![Fields of Punjab](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/fieldsofpunjab.jpg)

### Fields of Punjab 2

Punjab's fields are so breath-taking, had to add another palette.

```r
ShowPalettePhoto("FieldsOfPunjab2")
```

![Fields of Punjab 2](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/fieldsofpunjab2.jpg)

### Golden Temple

[Golden Temple](http://www.northsouthtravel.com/10-interesting-facts-about-the-golden-temple) is the oldest place of worship for [Sikhs](https://www.sikhnet.com/pages/who-are-sikhs-what-is-sikhism).

```r
ShowPalettePhoto("GoldenTemple")
```

![Golden Temple](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/goldentemple.jpg)

### Golden Temple 2

And because the Golden Temple looks so different at night, had to add another palette.

```r
ShowPalettePhoto("GoldenTemple2")
```

![Golden Temple 2](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/goldentemple2.jpg)

### Pindh

Pindh translates to Village. Villages make up the bedrock of Punjab.

```r
ShowPalettePhoto("Pindh")
```

![Pindh](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/pindh.jpg)

### Haveli

Havelis were grand mansions that bustled with life generations ago. 

Many havelis have fallen into disrepair, yet they remain beautiful reminants of an era gone by.

```r
ShowPalettePhoto("Haveli")
```

![Haveli](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/haveli.jpg)

### Haveli 2

Havelis always had a [courtyard](https://en.wikipedia.org/wiki/Haveli). Usually light, airy, with meticulously decorated structures.

```r
ShowPalettePhoto("Haveli2")
```

![Haveli2](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/haveli2.jpg)

### Amritsari Kulcha

Mouthwatering dish of [Amritsar, Punjab](https://wikitravel.org/en/Amritsar).

```r
ShowPalettePhoto("AmritsariKulcha")
```

![Amritsari Kulcha](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/amritsarikulcha.jpg)

### Chole Bhature

Another mouthwatering dish.

```r
ShowPalettePhoto("CholeBhature")
```

![Chole Bhature](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/cholebhature.jpg)

### Biryani Rice

[Biryani Rice](https://en.wikipedia.org/wiki/Biryani), the best rice dish in the world, made with the one and only [Basmati rice](https://en.wikipedia.org/wiki/Basmati), originating from (you guessed it), Punjab.

```r
ShowPalettePhoto("BiryaniRice")
```
![Biryani Rice](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/biryanirice.jpg)


### Amritsari Lassi

[Amritsari Lassi](https://www.youtube.com/watch?v=9QuPPmOYs6U) is a thick, cooling yogurt-based (almost buttermilk) drink that compliments these heavy meals.

Or, Lassi can be enjoyed on it's own :-)

```r
ShowPalettePhoto("AmritsariLassi")
```
![Amritsari Lassi](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/amritsarilassi.jpg)

### Amritsari Pede Wali Lassi

Lassi can also be a dessert.

[Amritsari Pede Wali Lassi](https://www.bigbasket.com/cookbook/recipes/2329/amritsari-pede-wali-lassi/?nc=bt) is a decadant, cooling drink that includes [milk-based pastries](https://www.milkmaid.in/recipes/malai-peda).

Certainly gives Hot Cocao and Marshmallows a run for their money!

```r
ShowPalettePhoto("AmritsariPedeWaliLassi")
```

![Amritsari Pede Wali Lassi](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/amritsaripedewalilassi.jpg)

### Kulfi

[Kulfi](http://www.grubstreet.com/2015/06/babu-ji-traditional-kulfi.html), a savory ice cream (ice cream is an under-statement) treat. Pistachio-based is most popular, yet it can be any flavor.

```r
ShowPalettePhoto("Kulfi")
```

![Kulfi](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/kulfi.jpg)

### Sohni Mahiwal

[Sohni Mahiwal](https://akhizmunawar.wordpress.com/2016/11/01/the-tragic-love-story-of-sohni-mahiwal/) - one of the many timeless and tragic lovestories of Punjab.

```r
ShowPalettePhoto("SohniMahiwal")
```

![Sohni Mahiwal](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/sohnimahiwal.jpg)

### Heer Ranjha

[Heer Ranjha](https://multoghost.wordpress.com/2016/06/06/the-marriage-of-heer-and-ranjha-a-punjabi-love-story/) - one of the many timeless and tragic lovestories of Punjab.

```r
ShowPalettePhoto("HeerRanjha")
```

![Heer Ranjha](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/heerranjha.jpg)

### Gidha

[Gidha](http://www.utsavpedia.com/cultural-connections/evergreen-folk-dance-from-punjab-giddha/) is a lively, festive dance done by ladies to celebrate and express joy!

[This music video](https://www.youtube.com/watch?v=W98G7oHytCE) is a lovely Gidha performance.

```r
ShowPalettePhoto("Gidha")
```

![Gidha](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/gidha.jpg)

### Gidha 2

So many beautiful colors Gidha dancers wear - had to add another palette!

```r
ShowPalettePhoto("Gidha2")
```

![Gidha 2](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/gidha2.jpg)

### Teej

[Teej](https://en.wikipedia.org/wiki/Teeyan) is generic name for festivals celebrated across India by girls and women. 

In Punjab, this festival is known as Teeyan. Teeyan involves women getting together and performing Gidda, married women visiting their families and receiving gifts. It is also traditional for women to ride on swings.

```r
ShowPalettePhoto("Teej")
```

![Teej](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/teej.jpg)

### Phulkari

[Phulkari](https://en.wikipedia.org/wiki/Phulkari) is an embroidery technique that means "Flower Work". In olden days women created these colorful shawls for themselves and family, making it a true folk art of Punjab. Now the Government is trying to promote this artform.

```r
ShowPalettePhoto("Phulkari")
```

![Phulkari](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/phulkari.jpg)

### Phulkari 2

Because I love colors so much.

Phulkaris are usually made into [Dupattas](https://simple.wikipedia.org/wiki/Dupatta) to be worn with [Salwar Kameez](http://www.panashindia.com/salwar/punjabi-suits) (Punjabi ladies's suit), as shown in the reference photo.

```r
ShowPalettePhoto("Phulkari2")
```

![Phulkari](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/phulkari2.jpg)

### Jutti

[Jutti](https://en.wikipedia.org/wiki/Jutti) are shoes. Who can live without shoes?

```r
ShowPalettePhoto("Jutti")
```

![Jutti](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/jutti.jpg)

### Jutti 2

More colorful, the better!

```r
ShowPalettePhoto("Jutti2")
```

![Jutti 2](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/jutti2.jpg)

### Jutti 3

And who cannot love jutti in every conceivable design!

```r
ShowPalettePhoto("Jutti3")
```

![Jutti 3](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/jutti3.jpg)

### Paranda

With [Paranda](https://www.utsavpedia.com/attires/paranda-or-parandi-from-punjab/), one can never have a bad hair day!

```r
ShowPalettePhoto("Paranda")
```

![Paranda](https://github.com/ArtieLadie/RanglaPunjab/blob/master/inst/img/paranda.jpg)
