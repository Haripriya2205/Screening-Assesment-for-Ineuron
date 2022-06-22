
def ReplaceString(filename,original,replace):
    try :
        new_content = ""
        with open(filename,"r") as file:
            content=file.read()                    # reading original content
            print("Old content:",content)
            if(original in content):
                new_content=content.replace(original,replace)
                with open(filename, "w") as file:
                    file.write(new_content)                # updating content
                with open(filename,"r") as file:
                    print("New content:",file.read())      # Reading updated content
            else:
                print('The word you want to replace is not found')
    except Exception as e:
        return e
        