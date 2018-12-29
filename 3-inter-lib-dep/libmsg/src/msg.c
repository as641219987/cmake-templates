#include <msg.h>

static const char* _msg = "hello from libmsg";

const char* get_message(void)
{
	return _msg;
}

