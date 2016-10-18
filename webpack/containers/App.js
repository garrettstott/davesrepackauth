import React from 'react'
import { connect } from 'react-redux'
import { logout } from '../actions/auth'

class App extends React.Component {
  constructor(props) {
    super(props)
    this.logout = this.logout.bind(this)
  }

  logout(e) {
    e.preventDefault()
    this.props.dispatch(logout())
  }

  render() {
    return (
      <div>
        <nav>
          <a style={{ cursor: 'pointer' }} onClick={this.logout}>Logout</a>
        </nav>
        { this.props.children }
      </div>
    )
  }
}

export default connect()(App);

