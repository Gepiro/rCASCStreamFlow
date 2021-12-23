#!usr/bin/env cwl-runner
cwlVersion: v1.0
class: Workflow
requirements:
  ScatterFeatureRequirement: {}
inputs:
  fileRPermutationP: File
  skeletonPermutationP: File
  index_prova: string[]
  matrix: File
  nCluster: File
outputs: 
  mtxKilledCell:
    type: 
      type: array
      items: File
    outputSource: permutationP/mtxKilledCell
  mtxPermutationP:
    type: 
      type: array
      items: File
    outputSource: permutationP/mtxPermutationP

steps:
  permutationP:
    run: permutationClusteringP.cwl
    scatter: index
    in:
      fileRPermutationP: fileRPermutationP
      mtxTopX: matrix
      skeleton: skeletonPermutationP
      index: index_prova
      nCluster: nCluster
    out: [mtxKilledCell, mtxPermutationP] 
