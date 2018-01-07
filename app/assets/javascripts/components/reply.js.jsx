var Reply = React.createClass({
	propTypes: {
		user: React.PropTypes.number,
		content: React.PropTypes.string


	},
	render: function () {
		return (
			<div>
				<div>Author: {this.props.user}</div>
				<div>Reply: {this.props.content}</div>
			</div>
		);
	}
});