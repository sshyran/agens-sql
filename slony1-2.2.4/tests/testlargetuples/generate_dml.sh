. support_funcs.sh

init_dml()
{
  echo "init_dml()"
}

begin()
{
  echo "begin()"
}

rollback()
{
  echo "rollback()"
}

commit()
{
  echo "commit()"
}

generate_initdata()
{
  numrows=$(random_number 50 1000)
  i=0;
  trippoint=`expr $numrows / 20`
  j=0;
  percent=0
  status "generating ${numrows} transactions of random data"
  percent=`expr $j \* 5`
  status "$percent %"
  GENDATA="$mktmp/generate.data"
  echo "" > ${GENDATA}
  while : ; do
    txtalen=$(random_number 1 100)
    txta=$(random_string ${txtalen})
    txta=`echo ${txta} | sed -e "s/\\\\\\\/\\\\\\\\\\\\\\/g" -e "s/'/''/g"`
    txtblen=$(random_number 1 100)
    txtb=$(random_string ${txtblen})
    txtb=`echo ${txtb} | sed -e "s/\\\\\\\/\\\\\\\\\\\\\\/g" -e "s/'/''/g"`
    ra=$(random_number 1 9)
    rb=$(random_number 1 9)
    rc=$(random_number 1 9)
    echo "INSERT INTO table1(data) VALUES ('${txta}');" >> $GENDATA   # Small tuple
    echo "INSERT INTO table1(data) VALUES ('${txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger${txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger${txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger${txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger${txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigger{txta} padding things out to make them bigger ${txtb} and bigger ${ra} and even ${rb} bigger and ${rc} bigge');" >> $GENDATA   # rather larger tuple
    if [ ${i} -ge ${numrows} ]; then
      break;
    else
      i=$((${i} +1))
      working=`expr $i % $trippoint`
      if [ $working -eq 0 ]; then
        j=`expr $j + 1`
        percent=`expr $j \* 5`
        status "$percent %"
      fi 
    fi
  done
  status "done"
}

do_initdata()
{
  originnode=${ORIGINNODE:-"1"}
  eval db=\$DB${originnode}
  eval host=\$HOST${originnode}
  eval user=\$USER${originnode}
  eval port=\$PORT${originnode}
  generate_initdata
  launch_poll
  status "loading data"
  $pgbindir/psql -h $host -p $port -d $db -U $user < $mktmp/generate.data 1> $mktmp/initdata.log 2> $mktmp/initdata.log
  if [ $? -ne 0 ]; then
    warn 3 "do_initdata failed, see $mktmp/initdata.log for details"
  fi 
  status "switch to sl_log_2"
  $pgbindir/psql -h $host -p $port -d $db -U $user -c "select \"_${CLUSTER1}\".logswitch_start();"
  generate_initdata
  status "loading data"
  $pgbindir/psql -h $host -p $port -d $db -U $user < $mktmp/generate.data 1> $mktmp/loadmoredata.log 2> $mktmp/loadmoredata.log
  status "done"
  sleep 20   # Give it a little while for replication to catch up
}
