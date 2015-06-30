# ScrollPager [![Version](http://cocoapod-badges.herokuapp.com/v/ScrollPager/badge.png)](http://cocoadocs.org/docsets/ScrollPager)
A scroll pager similar to the one in Flipboard. The control creates a tabbar given a title or an image, and has the option of connecting to a UIScrollView to automatically present given views and manage paging between these views

![alt tag](https://raw.github.com/aryaxt/ScrollPager/master/scrollPager.png)

##Usage:

Drag and drop a UIView into storyboard or xib.

OPTIONAL: If you like to use a scroll view assign the outlet to a scrollView.

###Tab with text
```swift
scrollPager.addSegmentsWithTitles(["Home", "Public Feed", "Profile"])
```

###Tab with images and views (will automatically add paging to scrollview and displays the views accordingly)
```swift
scrollPager.addSegmentsWithTitlesAndViews([
  ("Home", firstView),
  ("Public Feed", secondView),
  ("Profile", thirdView)
])
```

###Tab with images
```swift
secondScrollPager.addSegmentsWithImages([
  UIImage(named: "envelope")!,
  UIImage(named: "home")!
])
```

###Tab with images and views (will automatically add paging to scrollview and displays the views accordingly)
```swift
scrollPager.addSegmentsWithImagesAndViews([
  (UIImage(named: "envelope")!, firstView),
  (UIImage(named: "home")!, secondView),
  (UIImage(named: "anotherImage")!, thirdView)
])
```
