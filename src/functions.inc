<?php

namespace GosaMailPlugin\personal\mailaddress;

bindtextdomain("mailAccount", dirname(dirname(__FILE__)) . "/locale/compiled");

function __($GETTEXT) {
    return dgettext("mailAccount", $GETTEXT);
}

namespace GosaMailPlugin\admin\groups\mailaddress;

function __($GETTEXT) {
    return dgettext("mailAccount", $GETTEXT);
}
