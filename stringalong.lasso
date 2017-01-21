<form action="[response_filepath]" method="post">
<input type="text" name="a" value="[web_request->param('a')->asstring]" placeholder="value">
<input type="text" name="b" value="[web_request->param('b')->asstring]" placeholder="value">
<input name="submit" type="submit" value="submit">
</form>
[
define multiply(a, b) => {
    return(#a * #b)
}
local(
    a = web_request->param('a'),
    b = web_request->param('b'),
)
if(#a->asstring != '' && #b->asstring != '' ) => {^
    multiply(#a->asstring,integer(#b))
else
    'Send values for both fields, where the first is a string, and the second is an integer.'
^}
]
