import React, { Component } from 'react'
import { connect } from 'react-redux'
import { Carousel } from "react-bootstrap"
import Trip from './Trip'

class TripCarousel extends Component {
    render() {
        console.log(this.props.user)
        if (!this.props.user)
            return null

        let limit = this.props.user.trips.length > 5 ? 5 : this.props.user.trips.length
        let arr = []

        for (let i = 0; i < limit; i++) {
            arr.push(
                <Carousel.Item id="carousel-item" align="center">
                    <Trip trip={this.props.user.trips[i]} />
                </Carousel.Item>
            )
        }
        console.log(arr)
        return (
            <div>
                <fragment>
                {(arr.length === 0) ? null 
                :
                <Carousel id="carousel">
                    {arr}
                </Carousel>
                }
                </fragment>
            </div>
        )
    }
}

let mapStateToProps = state => ({ user: state.userReducer.user })
export default connect(mapStateToProps)(TripCarousel)



