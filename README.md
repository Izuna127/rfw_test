# rfw_test

Robot Frameworkお試しメモ

## install

```
F:\Python\RFW>pip install robotframework
Collecting robotframework
  Downloading robotframework-6.1.1-py3-none-any.whl (699 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 699.1/699.1 kB 22.2 MB/s eta 0:00:00
Installing collected packages: robotframework
Successfully installed robotframework-6.1.1
```

```
F:\Python\RFW> pip install pyyaml
Collecting pyyaml
  Downloading PyYAML-6.0.1-cp310-cp310-win_amd64.whl.metadata (2.1 kB)
Downloading PyYAML-6.0.1-cp310-cp310-win_amd64.whl (145 kB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 145.3/145.3 kB 8.4 MB/s eta 0:00:00
Installing collected packages: pyyaml
Successfully installed pyyaml-6.0.1
```

## how to execute

> robot -P lib -d results testcases\parent\simple.robot

## standard output sample

```
PS F:\Python\RFW> robot -P lib -d results .\testcases\datasheet\datasheet_test.robot
==============================================================================
Datasheet Test
==============================================================================
データ駆動1                                                           Test Function 1 -> Data_Value_1
Test Function 1 -> Data_Value_2
データ駆動1                                                           | PASS |
------------------------------------------------------------------------------
Datasheet Test                                                        | PASS |
1 test, 1 passed, 0 failed
==============================================================================
Output:  F:\Python\RFW\results\output.xml
Log:     F:\Python\RFW\results\log.html
Report:  F:\Python\RFW\results\report.html
```

```
F:\Python\RFW> robot -P lib -d results --variablefile .\testcases\datasheet\from_file.yaml .\testcases\datasheet\datasheet_test.robot
==============================================================================
Datasheet Test
==============================================================================
データ駆動1                                                           Test Function 1 -> from_file_value_1
Test Function 1 -> from_file_value_2
データ駆動1                                                           | PASS |
------------------------------------------------------------------------------
Datasheet Test                                                        | PASS |
1 test, 1 passed, 0 failed
==============================================================================
Output:  F:\Python\RFW\results\output.xml
Log:     F:\Python\RFW\results\log.html
Report:  F:\Python\RFW\results\report.html
```