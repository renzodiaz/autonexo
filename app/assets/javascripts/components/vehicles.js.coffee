@Vehicles = React.createClass
  getInitialState: ->
    vehicles: @props.data
  getDefaultProps: ->
    vehicles: []
  addVehicle: (vehicle) ->
    vehicles = @state.vehicles.slice()
    vehicles.push vehicle
    @setState vehicles: vehicles
  render: ->
    React.createElement NewVehicle, handleNewVehicle: @addVehicle
    React.DOM.table
      className: 'table', 
      React.DOM.thead null,
        React.DOM.tr null,
          React.DOM.th null, 'Model'
          React.DOM.th null, 'Category'
          React.DOM.th null, 'Price'
          React.DOM.th null, 'Created at'
      React.DOM.tbody null,
        for vehicle in @state.vehicles
          React.createElement Vehicle, key: vehicle.id, vehicle: vehicle