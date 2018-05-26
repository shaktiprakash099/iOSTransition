# iOSTransition
**A new way of presenting viewcontroller from all directions**<br/>
![Check the Gif](http://g.recordit.co/MRtDtMsJW4.gif)

Normally while presenting a controller in ios there are two traditional ways from right and and from bottom but Now we can present controller from any directions  like top ,bottom ,left and right

**INSTALLLATION GUIDE    Through Pod**

Add this to ur Podfile
<br/>

```pod 'iOSTransition',:git => 'https://github.com/shaktiprakash099/iOSTransition.git' ,:tag => '0.0.1'
```
<br/>


```import iOSTransition
```
<br/>
Then Declare a slideTransioningManager varible as below
<br/>

```lazy var slideTransioningDelegate = SlideInPresentationManager()
```
<br/>

Then specify  your slidetransioning  direction  by this while prsenting any controller also dont forget to mention the modal presentaionstyle top custom
<br/>

```override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
if segue.identifier == "leftSegueId"{
let leftVc = segue.destination  as! SlidefromLeftController
leftVc.transitioningDelegate = slideTransioningDelegate
slideTransioningDelegate.disableCompactHeight = false
slideTransioningDelegate.direction = .left
leftVc.modalPresentationStyle = .custom
}
else if segue.identifier == "rightSegueId"{
let rightVc = segue.destination  as! SlidefromRightController
rightVc.transitioningDelegate = slideTransioningDelegate
slideTransioningDelegate.disableCompactHeight = false
slideTransioningDelegate.direction = .right
rightVc.modalPresentationStyle = .custom
}
else {
let bottomVc = segue.destination  as! SlideFromBottomController
bottomVc.transitioningDelegate = slideTransioningDelegate
slideTransioningDelegate.disableCompactHeight = false
slideTransioningDelegate.direction = .bottom
bottomVc.modalPresentationStyle = .custom
}
}
```



