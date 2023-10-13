local nui = import 'nui';

lib.addKeybind({
  name = 'iAdmin',
  description = 'Open Admin Menu',
  defaultKey = 'F5',
  onReleased = nui.show
})