import React from 'react';

export default class ShowLove extends React.Component {

    async componentDidMount() {
        //let nextLove = await (await fetch(`localhost:8080/time/{this.state.time}`)).json();//主要是从后台拿json数据
        //this.setState({nextLove});
    }
    render() {
        return (
            <div>
                我爱戴琳{this.props.time}次！
            </div>
        );
    }
}
