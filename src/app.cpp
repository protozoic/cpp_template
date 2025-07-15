import functions;

#ifdef _WIN32
import std;
#else
#include <print>
#endif

int main()
{
    std::println("{0}", add(5, 2));
    return 0;
}