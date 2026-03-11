import re
from django_hosts import patterns, host

host_patterns = patterns(
    "",
    host(
        re.sub(r"_", r"-", r"modeling_demo"), "modeling_demo.urls", name="modeling_demo"
    ),
)
