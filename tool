#!/bin/bash
# My adaptations of meteor-boilerplate
# https://github.com/matteodem/meteor-boilerplate
# Overall check
if [ ! -d ".meteor" ]
    then echo 'Please use the tool out of your project root (./tool)'
    exit
fi

case ${1} in
    new)
        if [ -z ${2} ]; then echo "Define the component's name!"; exit; fi
        if [ -d "components/$2" ]; then echo "Remove the existing component ($2) folder manually!"; exit; fi
        
        # Create folder
        mkdir -p components/${2}

        # Create files

        touch components/${2}/${2}.js
        touch components/${2}/${2}.html
        # Fill files
        echo "<template name=\"${2}\">" >> components/${2}/${2}.html
        echo "    <p>Template ${2}</p>" >> components/${2}/${2}.html
        echo "</template>"              >> components/${2}/${2}.html
        echo ""                         >> components/${2}/${2}.html
        echo "Template.${2}.helpers({" >> components/${2}/${2}.js
        echo ""                             >> components/${2}/${2}.js
        echo "});"                          >> components/${2}/${2}.js
        echo ""                             >> components/${2}/${2}.js
        echo "Template.${2}.events({"  >> components/${2}/${2}.js
        echo ""                             >> components/${2}/${2}.js
        echo "});"                          >> components/${2}/${2}.js
        echo ""                             >> components/${2}/${2}.js
        # Succesful
        echo "Successfully created a component called \"${2}\""
        ;;
    *)
        if [ -z ${1} ]; then
            echo ""
        else
            echo "Could not find the command!"
            echo ""
        fi
        echo "List of possible operations: "
        echo -e "create:view       - Create a view folder under /client/views with html, js and less files in it"
        echo -e "create:common     - Create a html template file under /client/views/common"
        echo -e "create:route      - Create a route javascript file under /client/routes"
        echo -e "create:model      - Create a model which sets up basic javascript files under model, client/subscriptions and server/publications"
        echo -e "create:module     - Create a module, such as a searchbar, form etc."
        echo ""
        ;;
esac
