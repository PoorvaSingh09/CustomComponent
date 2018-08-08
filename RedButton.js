
import {requireNativeComponent} from 'react-native'
import React from 'react'

class RedButton extends React.Component {
    render() {
        return <RNTRedButton {...this.props} />
    }
}
var RNTRedButton = requireNativeComponent('RNTRedButton', RedButton)
module.exports = RedButton