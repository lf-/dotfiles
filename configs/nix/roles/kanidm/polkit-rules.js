// who thought it was a good idea to put polkit rules in one big file?!
polkit.addRule(function (action, subject) {
  var UNITS = "@UNITS@".split(" ");
  var ACTIONS = ["restart"];

  polkit.log(
    "subject.user = " +
      subject.user +
      " action.unit = " +
      action.lookup("unit") +
      " verb " +
      action.lookup("verb")
  );

  if (action.id !== "org.freedesktop.systemd1.manage-units") {
    return;
  }

  if (subject.user !== "caddy") {
    return;
  }

  // lol ES5
  if (
    UNITS.indexOf(action.lookup("unit")) === -1 ||
    ACTIONS.indexOf(action.lookup("verb")) === -1
  ) {
    return;
  }

  return polkit.Result.YES;
});
