int x;

int main()
{
  *(int*)0x76543210 = 0xfedcba98;
  x = 0xfedcba98;
  return 0;
}
