#!/bin/bash

BASE=/Users/mhr/Desktop/Transcriptomics
RAW=$BASE/01.RawData
IDX=$BASE/Brapa_STAR_index
OUT=$BASE/04.STAR_rerun/host_raw
THREADS=8

SAMPLES="CRI1 CRI2 CRI-3 CRH1 CRH3 CHR2"

mkdir -p $OUT

for s in $SAMPLES
do
  echo "▶ Running STAR host alignment (raw): $s"

  mkdir -p $OUT/$s

  STAR \
    --runThreadN $THREADS \
    --genomeDir $IDX \
    --readFilesIn \
      $RAW/$s/${s}_1.fq.gz \
      $RAW/$s/${s}_2.fq.gz \
    --readFilesCommand gunzip -c \
    --outFileNamePrefix $OUT/$s/${s}_ \
    --outSAMtype BAM SortedByCoordinate \
    --outReadsUnmapped Fastx

  echo "✔ Finished: $s"
  echo "-----------------------------"
done
