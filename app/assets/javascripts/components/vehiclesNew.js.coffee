@NewVehicle = React.createClass
  getInitialState: ->
     vehicle: ''
     banner: ''
     price: ''
  handleValueChange: (e) ->
    valueName = e.target.name
    @setState "#{valueName}" : e.target.value
  valid: ->
    @state.vehicle && @state.price
  handleSubmit: (e) ->
    e.preventDefault()
    $.post '', { vehicle: @state }, (data) =>
      @props.handleNewVehicle data
      @setState @getInitialState()
    , 'JSON'
  render: ->
    React.DOM.form
      encType: 'multipart/form-data'
      method: 'post'
      className: 'new-vehicle'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'field'
        React.DOM.input
          type: 'text'
          placeholder: 'Vehicle'
          name: 'vehicle'
          value: @state.vehicle
          onChange: @handleValueChange
      React.DOM.div
        className: 'field'
        React.DOM.input
          type: 'file'
          name: 'banner'
          value: @state.banner
          onChange: @handleValueChange
      React.DOM.div
        className: 'field'
        React.DOM.input
          type: 'text'
          placeholder: 'Price'
          name: 'price'
          value: @state.price
          onChange: @handleValueChange
      React.DOM.div
        className: 'field'
        React.DOM.button
          type: 'submit'
          disabled: !@valid()
          'Create'