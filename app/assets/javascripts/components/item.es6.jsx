class Item extends React.Component {
    constructor(props, context) {
        super(props, context);
        this.state = {item: ""};
        setInterval( () => this.updateState(), 1000);
    }
    updateState(){
        console.log(this);
        $.getJSON("/api", response => {
            console.log(this);
            this.setState({ item: response.data });
        });
    }
    componentDidMount() {
       this.updateState();
    }
    render() {
        return (
            <div>
                <h2> Rails React clock </h2>
                <div> Current server time: {this.state.item}</div>
            </div>
        );
    }
}