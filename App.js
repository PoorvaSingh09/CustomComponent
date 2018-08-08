import React, {Component} from 'react'
import MapView from './MapView'
import RedButton from './RedButton'
import {View} from 'react-native'

export default class App extends Component {
  onRegionChange(event) {
    console.log("2222")
    console.log(event.region.latitude)
    console.log(event.region.longitude)
    console.log(event.region.latitudeDelta)
    console.log(event.region.longitudeDelta)
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
                {/* <MapView region={region} 
                    zoomEnabled={false} 
                    onRegionChange={this.onRegionChange}
                    style={{flex:2}}/> */}
                <RedButton title={"Test Button"} style={{ padding: 50, height:50}}/>
              </View>
          )
  }
}