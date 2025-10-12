# Performance Test Reesults

1. 1000000 inserted | 400000 audited | 97.318 seconds | 86.412 seconds | 98.343 seconds (40% resulted in audit)
2. 1000000 inserted | NO ORA_FGA     | 5.978 seconds  | 6.487 seconds  | 6.815 seconds (FGA disabled)
3. 1000000 inserted | 0 audited      | 10.354 seconds | 10.51 seconds  | 10.187 seconds (FGA Enabled but zero audit)

![Setup.png](Setup.png)

![Result.png](Result.png)