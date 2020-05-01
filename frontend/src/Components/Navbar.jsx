import React, { Fragment } from "react";
import { connect } from 'react-redux'
import {
  Navbar,
  NavbarToggler,
  NavbarBrand,
  Nav,
  NavItem,
  NavLink,
  Dropdown,
  DropdownToggle,
  DropdownMenu,
  DropdownItem,
  InputGroup,
  InputGroupAddon,
  InputGroupText,
  Collapse
} from "shards-react";

class NavExample extends React.Component {



  constructor(props) {
    super(props)

    this.toggleDropdown = this.toggleDropdown.bind(this)
    this.toggleNavbar = this.toggleNavbar.bind(this)

    this.state = {
      dropdownOpen: false,
      collapseOpen: false
    };
  }

  toggleDropdown() {
    this.setState({
      ...this.state,
      ...{
        dropdownOpen: !this.state.dropdownOpen
      }
    })
  }

  toggleNavbar() {
    this.setState({
      ...this.state,
      ...{
        collapseOpen: !this.state.collapseOpen
      }
    })
  }

  render() {
    console.log("history-----------------------------------");
    console.log(this.props.history);
    return (
      
      <Navbar type="dark" theme="dark" expand="md">
        <NavbarToggler onClick={this.toggleNavbar} />

        <Collapse open={this.state.collapseOpen} navbar>
          <Nav navbar>

              <NavItem>
                <NavLink active href="/trails">
                  Trails
                </NavLink>
              </NavItem>

              { this.props.loggedIn &&
                <Fragment>
                  <NavItem>
                    <NavLink active href="/follower-feed">
                      Feed
                    </NavLink>
                  </NavItem>

                  <NavItem>
                    <NavLink active href="/all-users">
                       Users
                    </NavLink>
                  </NavItem>
                  
                  <Dropdown open={this.state.dropdownOpen} toggle={this.toggleDropdown}>
                    <DropdownToggle nav caret>
                      Profile
                    </DropdownToggle>
                      <DropdownMenu>                        
                        <DropdownItem href="/profile">My Profile</DropdownItem>
                        <DropdownItem  href="/edit-profile" >Edit</DropdownItem>
                      </DropdownMenu>
                  </Dropdown>
                  
                  <NavItem>
                    <NavLink active onClick={()=> { this.props.dispatch({ type: 'LOG_OUT' }); }} href= "/">
                      Log Out
                    </NavLink>
                  </NavItem> 
                </Fragment>
              }

              { !this.props.loggedIn &&
                  <NavItem>
                    <NavLink active href='/login'>
                      Login
                    </NavLink>
                  </NavItem>
              }
          </Nav>

          <Nav navbar className="ml-auto">
            <InputGroup size="sm" seamless>
              <InputGroupAddon type="prepend">
                <InputGroupText>
                </InputGroupText>
              </InputGroupAddon>
            </InputGroup>
          </Nav>
        </Collapse>
      </Navbar>
    )
  }
}

let mapStateToProps = state => ({ loggedIn: state.userReducer.loggedIn })
export default connect(mapStateToProps)(NavExample)