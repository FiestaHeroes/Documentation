from enum import Enum

import os
import re

lua_lines = open("../static/files/fiesta.lua").readlines()

# Remove previously auto generated markdown if it exists
if os.path.exists("../docs/Lua Scripting/documentation.md"):
    os.remove("../docs/Lua Scripting/documentation.md")

# Create new markdown
md_file = open("../docs/Lua Scripting/documentation.md", "w")

# Add Title
md_file.write("# Documentation\n")

# Add hint that file is auto generated
md_file.write("""\n<!---
This file is auto-generated. Do not attempts to modify this file directly.
Script is located under scripts/convert_lua.py
-->\n
""")

# lua file is split into multiple sections
# create an enum for it
class Section(Enum):
    NO_SECTION = 0,
    GENERAL_CLASSES = 1,
    GENERAL_FUNCTIONS = 2,

# Helper variables
section = Section.NO_SECTION

# Helper Functions
def UpdateSection(line: str):
    
    if "- Common.lua -" in line:

        md_file.write("## Normal Types\n\n")

        return Section.GENERAL_CLASSES

    if "- Structures -" in line:
        return Section.NO_SECTION

    if "- Damage Board -" in line:
        return Section.NO_SECTION

    if "- Functions -" in line:

        md_file.write("<br></br>\n\n")
        md_file.write("## Normal Functions\n\n")   
        md_file.write("<hr></hr>\n\n")   

        return Section.GENERAL_FUNCTIONS

    if "- Undocumented -" in line:

            md_file.write("<br></br>\n\n")
            md_file.write("## Undocumented\n\n")   
            md_file.write("<hr></hr>\n\n")   

            return Section.GENERAL_FUNCTIONS

    if "- HFunctions -" in line:
        return Section.NO_SECTION

    return section

class GeneralClass():
    Name : str = ""
    Description : str = ""
    TempDescription : str = ""

    Rows =[]

    def Reset():
        GeneralClass.Name = ""
        GeneralClass.Description = ""
        GeneralClass.TempDescription = ""
        GeneralClass.Rows.clear()

class GeneralFunction():
    Name : str = ""
    Description : str = ""
    TempDescription : str = ""
    Example : str = ""
    Def : str = ""

    Args = []
    Rets = []
    Overloads = []

    def Reset():
        GeneralFunction.Name = ""
        GeneralFunction.Description = ""
        GeneralFunction.TempDescription = ""
        GeneralFunction.Example = ""
        GeneralFunction.Def = ""
        GeneralFunction.Args.clear()
        GeneralFunction.Rets.clear()
        GeneralFunction.Overloads.clear()

def ParseAnnotation(line: str):
    if line.startswith("---@param "):
        temp = re.search(r"---@param\s+(\S+)\s+(\S+)(?:\s+(.*))?", line)
        if temp:
            GeneralFunction.Args.append([temp.group(1), temp.group(2)])
        return True

    if line.startswith("---@return "):
        temp = re.search(r"---@return\s+(\S+)(?:\s+(.*))?", line)
        if temp:
            ret_name = temp.group(2) if temp.group(2) else "-"
            GeneralFunction.Rets.append([ret_name, temp.group(1)])
        return True

    if line.startswith("---@overload "):
        temp = re.search(r"---@overload\s+(.*)", line)
        if temp:
            GeneralFunction.Overloads.append(temp.group(1).strip())
        return True

    return False

def FormatOverloadSignature(function_name: str, overload: str):
    match = re.search(r"fun\((.*)\)(?::\s*(.*))?", overload)

    if not match:
        return overload

    args = match.group(1)
    ret = match.group(2)

    signature = f"function {function_name}({args})"

    if ret:
        signature += f" -> {ret}"

    return signature

def FormatFunctionSignature(function_name: str, args, rets):
    formatted_args = []

    for arg in args:
        formatted_args.append(f"{arg[0]}: {arg[1]}")

    signature = f"function {function_name}({', '.join(formatted_args)})"

    if len(rets) != 0:
        signature += " -> " + ", ".join([ret[1] for ret in rets])

    return signature

def WriteGeneralFunctions(line: str):

    if line.startswith("function "):
        GeneralFunction.Name =  re.search("function (.*)\((.*)", line).group(1)
        GeneralFunction.Def = line
        return

    if line.startswith("---@") and not line.startswith("---@deprecated"):
        if ParseAnnotation(line):
            return
        return

    if line.startswith("--- `"):
        if GeneralFunction.Description == "":
            GeneralFunction.Description = GeneralFunction.TempDescription
            GeneralFunction.TempDescription = ""
        else:
            GeneralFunction.Example = GeneralFunction.TempDescription
            GeneralFunction.TempDescription = ""
        return

    if line.startswith("--- "):
        GeneralFunction.TempDescription += "\n" + re.search("--- (.*)", line).group(1)
        
        return

    if line.startswith("end"):
        # Write function
        md_file.write(f"### { GeneralFunction.Name }\n")

        temp_desc = GeneralFunction.Description.replace("\\", "")

        if temp_desc != "":
            md_file.write(f"{ temp_desc }\n\n")

        md_file.write("```lua  title='Definitions'\n")
        md_file.write(f"{FormatFunctionSignature(GeneralFunction.Name, GeneralFunction.Args, GeneralFunction.Rets)}\n")

        if len(GeneralFunction.Overloads) != 0:
            for overload in GeneralFunction.Overloads:
                md_file.write(f"{FormatOverloadSignature(GeneralFunction.Name, overload)}\n")

        md_file.write("```\n\n")

        md_file.write("\n")

        if GeneralFunction.Example != "":
            md_file.write("```lua title='Example'")
            md_file.write(f"{ GeneralFunction.Example }\n")
            md_file.write("```\n\n")

        md_file.write("<hr></hr>\n\n")

        # Reset
        GeneralFunction.Reset()

    return

def WriteGeneralClass(line: str):

    if line.startswith("--- "):
        GeneralClass.TempDescription += " " + re.search("--- (.*)", line).group(1)
        return

    if line.startswith(f"{GeneralClass.Name}."):
        vals = re.search(f"{GeneralClass.Name}.(.*) = (.*)", line)
    
        match = matches = [x for x in GeneralClass.Rows if x[0] == vals.group(1)]

        match[0][3] = vals.group(2)

        return

    if line.startswith("---@field "):

        reg = re.search("---@field (.*) (.*)", line)

        desc = GeneralClass.TempDescription.strip().replace("\\", "")

        if desc == "":
            desc = "-"

        GeneralClass.Rows.append([f"{reg.group(1)}", f"{reg.group(2)}", f"{ desc }", "-"])
        GeneralClass.TempDescription = ""
        return

    if line.startswith("---@class ") or "- Hook -" in line:
        # Write class

        if GeneralClass.Name != "":
            md_file.write(f"### { GeneralClass.Name }\n\n")

            if GeneralClass.Description != "":
                md_file.write(f"{ GeneralClass.Description }\n\n")

            md_file.write("| Name | Type | Description | Value |\n")
            md_file.write("|------|------|-------------|-------|\n")

            for row in GeneralClass.Rows:
                for val in row:       
                    md_file.write(f"| {val} ")

                md_file.write("|\n")

            md_file.write("\n")

        # Reset
        temp = GeneralClass.TempDescription

        GeneralClass.Reset()

        if "- Hook -" not in line:
            GeneralClass.Name = re.search("---@class (.*)", line).group(1)
            GeneralClass.Description = temp.strip()
        else:
            GeneralClass.Name = ""
            GeneralClass.Description = ""

        return



# Parse file line by line
for line in lua_lines:

    section = UpdateSection(line)

    if section == Section.NO_SECTION:
        continue

    if section == Section.GENERAL_CLASSES:
        WriteGeneralClass(line)

    if section == Section.GENERAL_FUNCTIONS:
        WriteGeneralFunctions(line)

# Write changes to file
md_file.close()
