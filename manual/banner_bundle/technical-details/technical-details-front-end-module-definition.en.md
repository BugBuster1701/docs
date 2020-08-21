---
title: "Technical details in the front end module definition"
description: ""
url: "technical-details/technical-details-in-the-front-end-module-definition"
weight: 30
---

### First banner for a new visitor

For each new visitor, at first is displayed the first published banner in the
category. The choice is then returned to random mode. Thus, a kind of recognition
can be achieved.


### Templates

Each module can be assigned its own Template. Two different templates are included.

* mod_banner_list_all
  * All fields are included.
* mod_banner_list_min
  * The headline and name were removed. It will only display the banner itself.

Both templates also support text banners.
For own Templates, the template files must start with "mod_banner_list_" and
end with ".html5".<br>
Example: `mod_banner_list_special.html5`

The best way, via the back create a copy of one of the templates
`mod_banner_list_...` and rename this, e.g. in `mod_banner_list_special`.
(the extension is automatically appended, so just like the original)


### Expert settings

#### Protect module

The frontend module will only be shown to selected member groups. 
The member must be logged in for this.


#### Show to guests only

The frontend module is not shown if the user is logged in as a member of the frontend.


#### Prevention of counting their own requests

There were some ideas on how you can prevent your own accesses not to count.
Especially if you work with dynamic IPs. Now here is a way to
implemented to do this through a customized User Agent string of the browser.

Via:

* Layout -> Themes -> Modules -> Modul Name

In the applied banners module in the new field "No counting for this
HTTP_USER_AGENT partial identifier" , a string is entered, it should be unique.<br>
Example: CTISOK

Several strings are also possible, then enter them separated by commas.

In older browsers the agent string could be adjusted by changing the
configuration of the browser. Currently an add-on should be used.
For Firefox look for [User Agent Switcher][1]

[1]: https://addons.mozilla.org/en-US/firefox/search/?q=user-agent-switcher
