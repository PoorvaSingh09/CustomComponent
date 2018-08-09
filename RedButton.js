
import {requireNativeComponent} from 'react-native'
import React from 'react'
import {NativeModules} from 'react-native'

class RedButton extends React.Component {
    _changeTitle = (title) => {
        
    }
    componentWillReceiveProps(nextProps) {
        if(nextProps.location != this.props.location) {
            console.log("button")
            console.log(this.refs["redbutton"])
            // this.refs["redbutton"].changeTitle("aa")
            NativeModules.RNTRedButtonManager.changeTitle(`location=${nextProps.location}`)
        }
    }
    
    render() {
        return <RNTRedButton ref="redbutton" {...this.props} />
    }
}
var RNTRedButton = requireNativeComponent('RNTRedButton', RedButton)

module.exports = RedButton
