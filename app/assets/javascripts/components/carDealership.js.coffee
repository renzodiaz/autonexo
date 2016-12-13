@CarDealership = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.car_dealership.name
      React.DOM.td null, @props.car_dealership.address
      React.DOM.td null, @props.car_dealership.created_at