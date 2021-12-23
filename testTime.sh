DIR="ResultsWorkflow"

if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  mkdir ResultsWorkflow
fi

now=$(date +"%T")
echo "Start time : $now" >| time.txt

streamflow testTime.yml --outdir ResultsWorkflow

now=$(date +"%T")
echo "End time : $now" >> time.txt
