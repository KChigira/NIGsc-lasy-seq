# NIGsc-lasy-seq
This script enables Clockmics' RNA-seq analysis to be performed on the supercomputer of the National Institute of Genetics in Japan.

## Requirement

- This script is made for use in the supercomputer of the National Institute of Genetics in Japan.
- An account of NIG super computer is needed.

## Usage

1. Usage
2. Usage
3. Usage

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
If you get a message,
```
INFO:    Build complete: rnaseq_pipeline.0.3.1.sif
```
and "rnaseq_pipeline.0.3.1.sif" is created in home directory.<br>
<br>
Next, You can get shell script "rnaseq-pipeline.sh" from this repository and upload to your home directory.<br>
## Test

1. test
2. test
3. test

## Author

CHIGIRA Koki
mail to: kyoujin2009kutar(at_mark)gmail.com
\*at_mark have to be replaved to "@"

## License

[MIT](http://KChigira.mit-license.org)</blockquote>
