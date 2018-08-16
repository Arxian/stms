$(function () {
    var checkbox = $("#trigger");
    var hidden = $("#recurHidden");
    hidden.hide();
    checkbox.change(function () {
        if (checkbox.is(':checked')) {
            hidden.show();
            //populate.val("Dude, this input got populated!");
        } else {
            hidden.hide();
        }
    });
});


