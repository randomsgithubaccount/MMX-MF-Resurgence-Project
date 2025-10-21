
if status="stand" or status="running"
{
	if pattern=0 {status="run"}
	if pattern=1 {status="jump"}
	if pattern=2 {status="shot"}
	if pattern=3 {status="jump"}
	if pattern=4 {status="run"}
	if pattern=5 {status="shot"}
	if pattern=6 {status="jump"}
}

pattern+=1

if pattern>6 {pattern=0}