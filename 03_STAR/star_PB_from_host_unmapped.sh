#!/bin/bash

BASE=/Users/mhr/Desktop/Transcriptomics
INPUT=$BASE/04.STAR_rerun/host_raw_v2
PBIDX=$BASE/PB_STAR_index
OUT=$BASE/05.PB_from_hostUnmapped

THREADS=8
SAMPLES="CRI-3 CRH1 CRH3 CHR2"

mkdir -p $OUT

for s in $SAMPLES
do
  echo "▶ PB alignment from host-unmapped: $s"

  INDIR=$INPUT/$s
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
  echo "------------------------------------"
done
