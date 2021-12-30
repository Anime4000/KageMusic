# KageMusic (Shadow Music)
KageMusic is Front End for Spleeter, self-contain.

> Another SpleeterGUI Alternative with more options and queue support

# Cross Platform
KageMusic can be run on Linux (Ubuntu) or macOS via Mono Runtime, however `System` folder adjust first:

1. Open Terminal
2. Navigate where `SpleeterFrontEnd.exe` reside
3. Delete everything except `pretrained_models` folder
4. `virtualenv System --distribute`
5. `source System\Scripts\activate`
6. `cd System`
7. `pip install spleeter`

# Update Spleeter
To update Spleeter library, follow this step:

1. Open Command Prompt/Terminal
2. Navigate where `SpleeterFrontEnd.exe` reside
3. `System\Scripts\activate` (Windows) or `source System\Scripts\activate` (Linux & Mac)
4. `cd System`
5. `pip install spleeter -U`
	
