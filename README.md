# Batch Deobfuscation Script

This repository contains a batch script designed to deobfuscate other batch files that have been obfuscated using the `certutil` method. The script reverses the obfuscation process and reconstructs the original batch file.

## How It Works

The deobfuscation script works by:

1. Checking if a command line argument (the path to the obfuscated batch file) is provided.
2. Verifying that the file's extension is either `.bat` or `.cmd`.
3. Deleting any existing temporary deobfuscated file.
4. Reading the obfuscated batch file line by line using the `CMD /U /C Type` command, which properly interprets Unicode characters.
5. Echoing each line to the console and simultaneously appending it to a temporary file.
6. Pausing at the end to allow the user to review the output.

## Usage

1. Download Deobfuscator to local machine

2. Place the deobfuscator and obfuscated file into the same directory

3. Drag and drop the obfuscated file onto the deobfuscator.bat

4. The script will display the deobfuscated content on the console and create a temporary deobfuscated file in the same directory as the obfuscated file, named `obfuscatedname_deobfed.bat||.cmd`.

5. Review the deobfuscated content and make sure it matches the expected original batch file.

6. **Note:** Be cautious when dealing with batch files from untrusted sources, as they can potentially contain malicious code.


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
