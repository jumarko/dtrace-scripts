#!/usr/sbin/dtrace -s

syscall::open:entry /execname=="nobud"/
{
	printf("%s %s",execname,copyinstr(arg0));
}

