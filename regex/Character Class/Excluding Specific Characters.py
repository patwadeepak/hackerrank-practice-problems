# Author: Deepak Kumar
Regex_Pattern = r'^[^\d][^aeiou][^bcDF][^\s][^AEIOU][^,.]$'

import re

print(str(bool(re.search(Regex_Pattern, input()))).lower())