Storaj
======

A simple localstorage helper that written in Coffeescript. You can create different storages and you can keep objects and arrays in that. 


# Usage

### Creating new Storaj
You can create a new storage like in the example: 

``` coffeescript
myStorage = new Storaj
  name        : "myGreatStorage"
  initialData : 
    colors    :
       red    : "#ff0000"
       green  : "#00ff00"
       blue   : "#0000ff"
```

By giving different names, you can create unlimited storages in your localstorage. If you give a name that created before, your instance uses it instead creating new one.

### Adding or changing a key
You can use .set methot to add or change a key.

```coffeescript
myStorage.set 
  repo  : "htt://github.com/neoberg/storaj"
  myObj :
    aKey    : "Lorem"
    another : "Ipsum"
```

### Getting a key's value
You can use .get methot to get a key's value.

``` coffeescript
myStorage.get "repo"
# Returns "http://github.com/neoberg/storaj"
```

### Removing a key
You can use .remove methot to remove a key with it's content.

``` coffeescript
myStorage.remove "colors"
```

### Getting all the content
You can use .getAll method to get all content of your storage.

```coffeescript
myStorage.getAll()
### 
 Returns 
 {
    repo  : "http://github.com/neoberg/storaj",
    myObj : {
      akey    : "Lorem",
      another : "Ipsum"
    }
 }
###

```

### Removing all the data
You can remove all the data in your specified storage by using .remove method.

```coffeescript
myStorage.removeAll()
```



