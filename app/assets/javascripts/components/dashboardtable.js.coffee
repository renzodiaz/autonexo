@VehiclesTable = React.createClass
  getInitialState: ->
    vehicles: @props.data
  getDefaultProps: ->
    vehicles: []
  render: ->
    React.DOM.table
      className: 'table main-table'
      React.DOM.thead null,
        React.DOM.tr null,
          React.DOM.th null, 'Model'
          React.DOM.th null, 'Category'
          React.DOM.th null, 'price'
          React.DOM.th null, 'Created at'
      React.DOM.tbody null,
        for vehicle in @state.vehicles
          React.createElement Vehicle, key: vehicle.id, vehicle: vehicle