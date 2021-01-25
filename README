# Top Analysis Examples

## Documentation and tutorials
Uproot tutorial
 - Indico (link to binder) https://indico.cern.ch/event/882824/contributions/3927101/
 - Youtube recording https://www.youtube.com/watch?v=ea-zYLQBS4U

Coffea tutorial:
 - Indico: https://indico.cern.ch/event/882824/contributions/3927107/
 - Youtube recording: https://www.youtube.com/watch?v=McKSS_WjLwU

Coffea documentation:
 - https://coffeateam.github.io/coffea/index.html

NanoAOD branch information:
 - https://cms-nanoaod-integration.web.cern.ch/integration/master-102X/mc102X_doc.html

## Setting up code

### Initial setup
The following need to be run the first time (and only the first time) you setup the code.  
```
git clone https://github.com/dnoonan08/TopAnalysisExample.git
cd TopAnalysisExample
source envSetup.sh
```
The git command will checkout the repository, and running `source envSetup.sh` will setup a python virtual environment, with all the necessary packages.   You may get some warning while running the envSetup, these are fine.  If the setup ran correctly, you will see your terminal prompt change to include `(ttgenv)` at the beginning, ex: `(ttgenv) [dnoonan@blueshark TopAnalysisExample]$ `. 

### Activating virtual environment
Each time you start a new ssh session, you will need to activate the virtual environment in order to be able to access the correct python version and packages.  This can be done by running the following from 
```
source ttgenv/bin/activate
```
If you would like to exit the virtual environment, you simply need to use the command `deactivate`

### Using Jupyter on blueshark
To run a jupyter notebook from blueshark, you need to use port forwarding to access notebook.  To do this, you need to ssh with the following command (replacing `xxx` with some 3 digit number).
```
ssh USERNAME@blueshark.fit.edu -L 8xxx:localhost:8xxx
```
Then, move to the TopAnalysisExample directory and activate the virtual environment:
```
cd TopAnalysisExample
source ttgenv/bin/activate
```
Finally, open jupyter, using the same 3 digit number as before in place of `xxx`.  There should be a link 
There should be a link like `http://localhost:8xxx/?token...` displayed in the output that you should paste that into your browser.
```
jupyter notebook --no-browser --port 8xxx
```
