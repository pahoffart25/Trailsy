import React, { Component } from 'react'
import { connect } from 'react-redux'
import { Card, ListGroup, Image } from "react-bootstrap"
import Iframe from 'react-iframe'


import PlacesAutocomplete, {geocodeByAddress, getLatLng} from 'react-places-autocomplete';
import "../Styles/Trails.scss";


class Trails extends Component {

    constructor(props) {
        super(props);
        this.state = { 
            address: '',
            mapPosition: "https://www.hikingproject.com/widget/map?favs=1&location=ip&x=-9402411&y=4020493&z=11.5&h=500"
        };
    }

    

    fetchTrails = (lat, lon) => {
        const maxResults = 15
        const decimalReplaceLat = lat.replace('.', '!')
        const decimalReplaceLon = lon.replace('.', '!')
        fetch(`http://localhost:3000/trails&lat=${decimalReplaceLat}&lon=${decimalReplaceLon}&maxResults=${maxResults}`)
        .then(res => res.json())
        .then(res => this.props.dispatch({ type: "FETCH_TRAILS", data: res }))
    }

    componentDidMount() {
        this.fetchTrails("29.7604", "-95.3880")
    }

    difficultyImg = (t) => {
        switch(t.difficulty) {
            case "green":
                return "https://cdn.apstatic.com/img/diff/green.svg"

            case "greenBlue":
                return "https://cdn.apstatic.com/img/diff/greenBlue.svg"

            case "blue":
                return "https://cdn.apstatic.com/img/diff/blue.svg"

            case "blueBlack":
                return "https://cdn.apstatic.com/img/diff/blueBlack.svg"

            case "black":
                return "https://cdn.apstatic.com/img/diff/black.svg"

            default: 
                return ""
        }
    }

    renderTrails = () => {
        console.log("TRAILS", this.props.trailReducer)
        if(this.props){
          const trailCards = this.props.trailReducer.map(t => {
            return(
                <Card border="dark"  id="trail-card" key={t.id}>
                    <Card.Img 
                        
                        id="trail-card-image" 
                        alt="trail-img" 
                        className="card-img" 
                        src={t.imgSmallMed ? 
                        ( t.imgSmallMed) 
                            : 
                        ("https://pdxfamilyadventures.com/wp-content/uploads/2012/11/DSC03794.jpg")} 
                    /><br/>
                    
                    <Card.Title id="trail-name">{t.name}</Card.Title>

                    <Card.Body>
                        <Card.Text>{t.location} </Card.Text>
                        <Card.Text id="trail-summary">{t.summary} </Card.Text>
                        <ListGroup variant="flush">
                            <ListGroup.Item>Stars: {t.stars}</ListGroup.Item>
                            <ListGroup.Item>Length: {t.length} miles</ListGroup.Item>
                            <ListGroup.Item>High: {t.high} ft, Low: {t.low} ft</ListGroup.Item>
                            <ListGroup.Item id="trail-difficulty">Difficulty: <Image style={{'borderRadius':'4px' }}src={this.difficultyImg(t)}/></ListGroup.Item>
                            <ListGroup.Item> <a href={t.url} rel="noopener noreferrer" target="_blank">Trail Details </a></ListGroup.Item>
                        </ListGroup>
                  </Card.Body>
              </Card>
            )
        })
          return(
            <div className = "row">
              {trailCards}
            </div>
          )
        }
    }   

    render() {
        return (
            <div>
                <Iframe title="trails-map" className="trails-map" frameborder="0" scrolling="yes" 
                    src={this.state.mapPosition}>
                </Iframe>
              {/* here */}
                {this.renderTrails()}
            </div>
        )
    }
}

let mapStateToProps = state => ({ trailReducer: state.trailReducer.trail })
export default connect(mapStateToProps)(Trails)