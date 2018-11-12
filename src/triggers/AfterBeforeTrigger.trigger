trigger AfterBeforeTrigger on Account (before insert) {
  System.debug(Trigger.New);
}