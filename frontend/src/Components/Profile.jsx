import React, { Component } from 'react'
import { connect } from 'react-redux'
import { Link } from "react-router-dom"
import Iframe from 'react-iframe'
import { Button } from "react-bootstrap"
// import TripCarousel from "./TripCarousel"


class Profile extends Component {
    render() {
        return (
            <div>
                <div className="user-profile">
                <br/><h2>Hey {this.props.user.name}!</h2><br/>

                    <Link to="/trip-form"> 
                        <Button  variant="primary">New Trip!</Button><br/><br/>
                    </Link>  


                </div><br/>

                <div>
                    {/* <TripCarousel/> */}
                </div><br/>

            </div>
        )
    }
}

let mapStateToProps = state => ({ user: state.userReducer.user })
export default connect(mapStateToProps)(Profile)