@Vehicles = React.createClass
  getInitialState: ->
    vehicles: @props.data
  render: ->
    React.createElement 'li', {key: @state.vehicles.id, className: 'vehicleItem'},  @state.vehicles.vehicle