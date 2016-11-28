@Vehicle = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.vehicle.vehicle
      React.DOM.td null, 'Sedan'
      React.DOM.td null, @props.vehicle.price
      React.DOM.td null, @props.vehicle.created_at