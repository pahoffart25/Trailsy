import React, { Component } from 'react'
import { connect } from 'react-redux'
import { Card, Button, Image } from "react-bootstrap"
import { FaStar } from "react-icons/fa"
import Modal from "react-modal"

class Trip extends Component {
    state = { showModal: false }

    renderTripModal = () => {
        Modal.setAppElement("#root")
        return ( 
            <Modal id='trip-show-modal' isOpen={this.state.showModal} >
                <h3> {this.props.trip.title} </h3>
                <Image id="trip-modal-image" src={this.props.trip.image}></Image>
                <h5>{this.props.trip.location}</h5>
                <p>{this.props.trip.description}</p>
                <ul>{this.props.trip.trail_names.map(trail_name => <li>{trail_name}</li>)}</ul>
                <p> {this.props.trip.stars} <FaStar/> </p>
                <Button onClick={()=> this.setState({ showModal: false }) } variant="secondary">Close</Button>
            </Modal>
        )
    }

    render() {
        return (
            <div>
                { this.renderTripModal() }

                <div class="card text-white bg-dark mb-3">
                    <img class="card-img-top" src={this.props.trip.image} alt="Card image cap"/>
                    <div class="card-body">
                        <p class="card-text">{this.props.trip.title}</p>
                        <Button onClick={()=> this.setState({ showModal: true })} variant="primary">Trip Details</Button>
                    </div>
                </div>
            </div>
        )
    }
}



let mapStateToProps = state => ({ user: state.userReducer.user })
export default connect(mapStateToProps)(Trip)


