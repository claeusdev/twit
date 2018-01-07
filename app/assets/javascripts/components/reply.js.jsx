var Reply = React.createClass({
	propTypes: {
		author: React.PropTypes.string,
		content: React.PropTypes.string

	},
	render: function () {
		return (
			<div>
				<div>Author: {this.props.author}</div>
				<div>Reply: {this.props.content}</div>
			</div>
		);
	}
});