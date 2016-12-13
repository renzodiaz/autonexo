@CarDealerships = React.createClass
  getInitialState: ->
    car_deaderships: @props.data
  getDefaultProps: ->
    car_deaderships: []
  addCarDealership: (car_dealership) ->
    car_deaderships = @state.car_deaderships.slice()
    car_deaderships.push car_dealership
    @setState car_deaderships: car_deaderships
  render: ->
    React.DOM.div
      className: 'car-dealerships-wrapper'
      React.createElement NewCarDealership, handleNewCarDealership: @addCarDealership
      React.DOM.table
        className: 'table'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Name'
            React.DOM.th null, 'Address'
            React.DOM.th null, 'Created at'
        React.DOM.tbody null,
          for car_dealership in @state.car_deaderships
            React.createElement CarDealership, key: car_dealership.id, car_dealership: car_dealership