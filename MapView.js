import {requireNativeComponent} from 'react-native'
import PropTypes from 'prop-types'
import React from 'react'

class MapView extends React.Component {
    _onRegionChange = (event) => {
        if(!this.props.onRegionChange)
            return
        this.props.onRegionChange(event.nativeEvent)
    }
    render() {
        return <RNTMap 
                    {...this.props}
                    onRegionChange={this._onRegionChange}
                />
    }
}

MapView.propTypes = {
    zoomEnabled: PropTypes.bool,
    region: PropTypes.shape ({
        latitude: PropTypes.number.isRequired,
        longitude: PropTypes.number.isRequired,
        latitudeDelta: PropTypes.number.isRequired,
        longitudeDelta:PropTypes.number.isRequired,
    }),
    onRegionChange: PropTypes.func,
}

var RNTMap = requireNativeComponent('RNTMap', MapView)
module.exports = MapView