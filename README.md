# NIGsc-lasy-seq
This script enables Clockmics' RNA-seq analysis to be performed on the supercomputer of the National Institute of Genetics in Japan.

## Requirement

- This script is made for use in the supercomputer of the National Institute of Genetics in Japan.
- An account of NIG super computer is needed.

## Installation
In the Gate way node,
```
$ qlogin -l s_vmem=20G -l mem_req=20G
```
Then, in login node,
```
$ cd ~
$ singularity build rnaseq_pipeline.0.3.1.sif \
              docker://dynacomkobe/biodocker_rnaseq_pipeline:ver.0.3.1
```
Instration success if you get a message,
```
INFO:    Build complete: rnaseq_pipeline.0.3.1.sif
```
 and "rnaseq_pipeline.0.3.1.sif" is created in home directory.<br>
<br>
Next, You can get shell script "rnaseq-pipeline.sh" from this repository and upload to your home directory.<br>

## Usage
1. make a working directory like below.
```
$HOME/[working directory name]/data/org/[Your RNA-seq data(fastq gziped)]
```
2. Edit "rnaseq-pipeline.sh".(write working directory)
```
export _JAVA_OPTIONS="-Xmx1g"
singularity exec -B $HOME/<i>[working directory name]</i>C:/work \
                 $HOME/rnaseq_pipeline.0.3.1.sif /singularity \
                 -m UMI -l 100 -u 10 -c 16 -r Osa
```
3. Submit the script to the que.
```
$ cd ~
$ qsub rnaseq-pipeline.sh
```

## Author

CHIGIRA Koki<br>
mail to: kyoujin2009kutar(at_mark)gmail.com<br>
\*at_mark have to be replaved to "@"

## License

[MIT](http://KChigira.mit-license.org)</blockquote>
