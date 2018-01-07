var ReplyList = React.createClass({

	render: function () {
		return (
			<div>
				{JSON.parse(this.props.replies).map(function(reply) {
					return (<Reply key={reply.id} content={reply.content} />);
				})}
			</div>
		);
	}
});