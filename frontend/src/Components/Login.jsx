import React from "react";
import { Link } from "react-router-dom"
import { connect } from 'react-redux'
import { Redirect } from 'react-router-dom'
import { Form, FormInput, FormGroup } from "shards-react"
import { Modal, Button } from "react-bootstrap"
import LoginDiv from "./LoginDiv"

class Login extends React.Component {
    state = { redirect: null }

    handleLogin = (e) => {
        e.preventDefault()
        // if(e.target.email.value && e.target.password.value) {
            fetch('http://localhost:3000/login',{
                method: 'POST',
                headers: { Accept: 'application/json', 'Content-Type':'application/json' },
                body: JSON.stringify({
                    user: {
                        email: e.target.email.value.toLowerCase(),
                        password: e.target.password.value
                    }
                })
            })
            .then(res => res.json())
            .then(res => {
                if(res.jwt) {
                    // console.log(res.jwt)
                    localStorage.setItem('token', res.jwt)
                    this.props.dispatch({ type: 'GET_USER', user: res.user })
                    this.setState({ redirect: <Redirect to='/' /> })
                } else alert("Email or Password is incorrect")
            }) 
    }

    render() {
        return (
            <LoginDiv>
                {this.state.redirect}
                <Modal.Dialog>

                    <Modal.Body>
                        <Form onSubmit={(e) => this.handleLogin(e)}>
                            <h3>Login Form</h3><br/>

                            <FormGroup>
                                <label htmlFor="#email">Email</label>
                                <FormInput type="email" name="email" id="#email" placeholder="Email" />
                            </FormGroup>

                            <FormGroup>
                                <label htmlFor="#password">Password</label>
                                <FormInput name="password" type="password" id="#password" placeholder="Password" />
                            </FormGroup>

                            <button class="btn btn-dark" type="submit">Login</button><br/><br/>
                        </Form>
                        
                        <Link to="/signup">
                            <button class="btn btn-dark"> Create Account </button>
                        </Link>
                    </Modal.Body>
                </Modal.Dialog> 
            </LoginDiv>
        )
    }
}

export default connect()(Login)