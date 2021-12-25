DIR="ResultsWorkflow"

if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  mkdir ResultsWorkflow
fi

now=$(date)
echo "Start time : $now" >| time.txt

streamflow run testTime.yml --outdir ResultsWorkflow

now=$(date)
echo "End time : $now" >> time.txt
