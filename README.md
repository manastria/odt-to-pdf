# odt-to-pdf.cmd

## Overview

`odt-to-pdf.cmd` is a Windows batch script that converts all `.odt` files in the current directory to `.pdf` files using LibreOffice.

## Requirements

- Windows operating system
- LibreOffice installed on the system

## Usage

1. Copy the `odt-to-pdf.cmd` file to the directory containing the `.odt` files to be converted.
2. Double-click the `odt-to-pdf.cmd` file to run the script.
3. The script will convert all `.odt` files in the directory to `.pdf` files using LibreOffice.
4. The converted `.pdf` files will be saved in the same directory as the original `.odt` files.

## Notes

- The script sets the input and output file extensions to `.odt` and `.pdf` respectively. If you want to convert files with different extensions, you can modify the `input_extension` and `output_extension` variables in the script accordingly.
- The script displays the total number of successfully converted files at the end of the process.
- The script waits for the user to press a key before closing the window.

## License

This script is released under the MIT License. Please see the [LICENSE](LICENSE) file for details.

Feel free to modify or improve the script to suit your needs. If you find any issues or have any suggestions, please open an issue or submit a pull request.