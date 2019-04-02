void do_foo_stuff(void);
asm(".globl do_bar_stuff");

void main(void)
{
	do_foo_stuff();
}

