import React from 'react'
import ReactDOM from 'react-dom'
import ComponentX from './components/ComponentX'

const template = (
  <div>
    <h1>Micro React Boilerplate</h1>
    <ComponentX />
  </div>
)

ReactDOM.render(template, document.getElementById('root-X'))
