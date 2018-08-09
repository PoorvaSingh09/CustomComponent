import React, {Component} from 'react'
import MapView from './MapView'
import RedButton from './RedButton'
import {View, Button} from 'react-native'

export default class App extends Component {
  constructor(props) {
    super(props)
    this.state={location:"Location"}
  }
  
  onRegionChange(event) {
    console.log("2222")
    console.log(event.region.latitude)
    console.log(event.region.longitude)
    console.log(event.region.latitudeDelta)
    console.log(event.region.longitudeDelta)
    
    this.setState(previousState => {
      return {location: event.region.latitude}
    })
  }
  render() {
    console.log("1111")
    var region = {
      latitude: 37.48,
      longitude: -122.16,
      latitudeDelta: 0.1,
      longitudeDelta: 0.1,
    }
    return (  <View style={{flex:1}}>
                <MapView region={region} 
                    zoomEnabled={true} 
                    onRegionChange={this.onRegionChange.bind(this)}
                    style={{flex:2}}/>
                <RedButton  
                  location={this.state.location}
                  style={{ padding: 50, height:50}}/>
                <HomeView/>
              </View>
          )
  }
}

import { NativeEventEmitter, NativeModules } from 'react-native';  
const { Foo } = NativeModules;

class HomeView extends React.Component {  
  render() {
    return <Button title="test" onPress={this.onDoThis}/>
  }
  onDoThis() {
    console.log("FOO")
    console.log(Foo)
    Foo.doThis();
  }
}