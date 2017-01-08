from subprocess import call
import threading

def install_node():
    modules = ["express","create-react-app","yarn"]
    for module in modules:
        call(["sudo","npm",'install',"-g",module])

def install_python():
        call(["sudo","pip",'install',"-r","python_packages.txt"])

threading.Thread(target=install_node).start()
threading.Thread(target=install_python).start()
