#!/bin/bash

BASE=/Users/mhr/Desktop/Transcriptomics
PBIDX=$BASE/PB_STAR_index
OUT=$BASE/05.PB_from_hostUnmapped
THREADS=8

mkdir -p $OUT

############################
# Part 1: CRI1, CRI2
############################
INPUT1=$BASE/04.STAR_rerun/host_raw
SAMPLES1="CRI1 CRI2"

for s in $SAMPLES1
do
  echo "▶ PB alignment (host_unmapped → PB): $s"

  INDIR=$INPUT1/$s
  OUTDIR=$OUT/$s
  mkdir -p $OUTDIR

  STAR \
    --runThreadN $THREADS \
    --genomeDir $PBIDX \
    --readFilesIn \
      $INDIR/${s}_Unmapped.out.mate1 \
      $INDIR/${s}_Unmapped.out.mate2 \
    --outFileNamePrefix $OUTDIR/${s}_PB_ \
    --outSAMtype BAM SortedByCoordinate

  echo "✔ Finished: $s"
  echo "-----------------------------"
done

############################
# Part 2: CRI-3, CRH1, CRH3, CHR2
############################
INPUT2=$BASE/04.STAR_rerun/host_raw_v2
SAMPLES2="CRI-3 CRH1 CRH3 CHR2"

for s in $SAMPLES2
do
  echo "▶ PB alignment (host_unmapped → PB): $s"

  INDIR=$INPUT2/$s
  OUTDIR=$OUT/$s
  mkdir -p $OUTDIR

  STAR \
    --runThreadN $THREADS \
    --genomeDir $PBIDX \
    --readFilesIn \
      $INDIR/${s}_Unmapped.out.mate1 \
      $INDIR/${s}_Unmapped.out.mate2 \
    --outFileNamePrefix $OUTDIR/${s}_PB_ \
    --outSAMtype BAM SortedByCoordinate

  echo "✔ Finished: $s"
  echo "-----------------------------"
done
