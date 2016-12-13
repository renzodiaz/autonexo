@NewCarDealership = React.createClass
  getInitialState: ->
    name: ''
    address: ''
  handleValueChange: (e) ->
    valueName = e.target.name
    @setState "#{valueName}" : e.target.value
  valid: ->
    @state.name && @state.address
  handleSubmit: (e) ->
    e.preventDefault()
    $.post '', { car_dealership: @state }, (data) =>
      @props.handleNewCarDealership data
      @setState @getInitialState()
    , 'JSON'
  render: ->
    React.DOM.form
      method: 'post'
      className: 'new-car-dealership form-hide'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'field'
        React.DOM.input
          type: 'text'
          placeholder: 'Name'
          name: 'name'
          value: @state.name
          onChange: @handleValueChange
      React.DOM.div
        className: 'field'
        React.DOM.input
          type: 'text'
          placeholder: 'Address'
          name: 'address'
          value: @state.address
          onChange: @handleValueChange
      React.DOM.div
        className: 'field'
        React.DOM.button
          type: 'submit'
          disabled: !@valid()
          'Create'