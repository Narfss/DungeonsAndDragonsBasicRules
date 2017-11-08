$( document ).ready(function() {
  $(".roll-dice").each(function() {
    $( this ).on( "click", function() {
        var amount = 1;
        var dice= 6;
        var modification = "+";
        var mod = 0;
        var minimal = 0;
        match = $( this ).text().match(/^\s*(\d+)?\s*d\s*(\d+)\s*(.*?)\s*$/);
        if (match) {
            if (match[1]) {
                amount = parseInt(match[1]);
            }
            if (match[2]) {
                dice = parseInt(match[2]);
            }
            if (match[3]) {
                var modifiers = match[3].match(/([+-]\s*\d+)/g);
                for (var i = 0; i < modifiers.length; i++) {
                    mod += parseInt(modifiers[i].replace(/\s/g, ''));
                }
            }
            var result = Math.floor(Math.random() * dice + 1) * amount + mod;
            console.log( $( this ).text() +  " = " + amount + " d " + dice + " mod " + mod + " -> " + result);
            //https://notifyjs.com/
            if (result >= minimal) {
              $(this).notify("Result: " + result, "success");
            } else {
              $(this).notify("Result: " + result, "error");
            }
        } else {
            parseInt(dice);
        }
    });
})
})
