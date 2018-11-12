trigger HelloTrigger on Account (before insert) {
System.debug('Hello Trigger Before Insert');
}