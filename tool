#!/bin/bash
# My adaptations of meteor-boilerplate
# https://github.com/matteodem/meteor-boilerplate
# Overall check
#if [ ! -d ".meteor" ]
#    then echo 'Please use the tool out of your project root (./tool)'
#    exit
#fi

case ${1} in
    new)
        if [ -z ${2} ]; then echo "Define the component's name!"; exit; fi
        if [ -d "components/$2" ]; then echo "Remove the existing component ($2) folder manually!"; exit; fi
        
        # Create folder
        mkdir -p components/${2}

        # Create files

        touch components/${2}/logic.coffee
        touch components/${2}/interface.html
        touch components/${2}/example.html
        # Fill files
        echo "<template name=\"bt_${2}\">" >> components/${2}/interface.html
        echo "    <p>Template {{name}}</p>" >> components/${2}/interface.html
        echo "    <p>myProperty {{myProperty}}</p>" >> components/${2}/interface.html
        echo "    <p>my content: {{> content}}</p>" >> components/${2}/interface.html
        echo "</template>"              >> components/${2}/interface.html
        echo ""                         >> components/${2}/interface.html

        echo "<template name=\"bt_${2}_example\">" >> components/${2}/example.html
        echo "  {{#bt_${2} myProperty=\"myValue\"}}" >> components/${2}/example.html
        echo "      Example Content" >> components/${2}/example.html
        echo "  {{/bt_${2}}}"              >> components/${2}/example.html
        echo "</template>"              >> components/${2}/example.html
        echo ""                         >> components/${2}/example.html


        echo "if Meteor.isClient" >> components/${2}/logic.coffee
        echo "  Template.bt_${2}.helpers" >> components/${2}/logic.coffee
        echo "      name: ->"                             >> components/${2}/logic.coffee
        echo "          return \"bt_${2}\""                             >> components/${2}/logic.coffee
        echo ""                          >> components/${2}/logic.coffee
        echo ""                             >> components/${2}/logic.coffee
        echo "  Template.bt_${2}.events"  >> components/${2}/logic.coffee
        echo "      # events: click, blur, keypress, keyup, keydown, etc"                             >> components/${2}/logic.coffee
        echo "      'click div': (e) ->"                             >> components/${2}/logic.coffee
        echo "          button = [\"left\",\"middle\",\"right\"][e.which-1]"                             >> components/${2}/logic.coffee
        echo "          console.log \"template: [bt_alerts] -> event : [click :#{button}] -> selector: [div]\""                             >> components/${2}/logic.coffee
        echo "          "                             >> components/${2}/logic.coffee
        echo "          # Run this code when div is clicked"                             >> components/${2}/logic.coffee
        echo "          "                             >> components/${2}/logic.coffee
        echo ""                          >> components/${2}/logic.coffee
        echo ""                             >> components/${2}/logic.coffee
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
