import string
count=0
newFile=open("modifiedInfix.py","a")
with open("infix.txt","r") as f:
    for line in f:

            if(line.find("<else,>")!=-1):
                line=line.replace("<else,>","el")
            else:
                pass
            if(line.find("while_true>")!=-1):
                line=line.replace("<while_true>","while(1)")
            else:
                pass
            if(line.find("<isDIGIT,>")!=-1):
                line=line.replace("<isDIGIT,>","if(ch>='0' and ch<='9'):")
            elif(line.find("<isADDOP,>")!=-1):
                line=line.replace("<isADDOP,>","if(ch=='+' or ch=='-'):")
            elif(line.find("<isMULOP,>")!=-1):
                line=line.replace("<isMULOP,>","if(ch=='/' or ch=='*'):")
            elif(line.find("<isWS,>")!=-1):
                line=line.replace("<isWS,>","if(ch=='' or ch=='\\t'):")
            elif(line.find("<isEOL,>")!=-1):
                line=line.replace("<isEOL,>","if(ch=='\\n'):")
            elif(line.find("<isEOF,>")!=-1):
                line=line.replace("<isEOF,>","if(ch==65535):")
            elif(line.find("<ifYES,>")!=-1):
                line=line.replace("<ifYES,>","if(yesorno=='y'):")
            elif(line.find("<ifNO,>")!=-1):
                line=line.replace("<ifNO,>","if(yesorno=='n'):")
            newFile.write(line)




