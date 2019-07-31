import React from 'react';
import axios from 'axios';
import ShowLove from './ShowLove';
import Button from '@material-ui/core/Button';

export default class MyButton extends React.Component {
    constructor(props) {
        super(props);
        this.state = {data: 0};
        this.setNewNumber = this.setNewNumber.bind(this);
    }

    setNewNumber() {
        axios.get(`/time/${this.state.data}`)
            .then(res => {
                this.setState({data: res.data});
            });
    }
    render() {
        return (
            <div>
                <Button variant="contained" color="primary" onClick = {this.setNewNumber} >
                    再爱一次
                </Button>

                <ShowLove time = {this.state.data} />
            </div>

        );
    }
}