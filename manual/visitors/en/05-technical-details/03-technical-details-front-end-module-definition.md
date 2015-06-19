## Technical details front end module definition

### Templates

Each front end module can be assigned its own Template. Four different templates are included.

* `mod_visitors_fe_all`
    * All fields are included. (see example above)
* `mod_visitors_fe_hits`
    * Here the visit rows were removed.
* `mod_visitors_fe_visits`
    * Here the hit rows were removed.
* `mod_visitors_fe_invisible`
    * Here, nothing is displayed. This template is used for a pure counting.

For own Templates, the template files must start with `mod_visitors_fe_` and end with `.html5` or `.xhtml`, depending on which output format is set in the layout.

### Show to guests only

Hide the module if a member (front end user) is logged in.

### Protect module

Show the module to certain member groups only.

### No counting for this HTTP_USER_AGENT partial identifier

You can set a custom "UserAgent String" in your browser and in the visitors module configuration.

* Layout -> Themes -> Modules -> Module Name

In the field: "No counting for this HTTP_USER_AGENT partial identifier", you can enter a unique identifier.<br>
Example: CTISOK

In your browser, an add-on should be used. For Firefox that would, for example, the [User Agent Switcher](https://addons.mozilla.org/de/firefox/addon/user-agent-switcher/)
