# Server Checklist

This application is a frontend for an internal database, tracking various specifications and information
on servers throughout the property. 

Ian Thomson


## CHANGELOG

### v1.1
* New fields supported
  * VM server flag
  * HWDB asset number
  * WSUS last updated date
  * Hardware-independent application support
  * Downtime-affected departments
* added default alphabetical sort on index
* clarified some entry form titles
* removed ability to rename servers
* restricted server record creation to admins
* changed index to list IP in place of location
* added indicators on index for Test/VM servers
* minor CSS tweaks

### v1.0.1
*  fixed SHOW not authorizing a user to server if they possessed an implicit admin level
*  added root link to CRAIG logo in header
*  minor CSS tweaks
*  controller method added to clean up authorization check

### v1.0
* _Initial Release_
