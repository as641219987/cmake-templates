#include <foo.h>
#include <foo-private.h>

static const char* msg = FOO_MSG;

const char* foo(void)
{
	return msg;
}

