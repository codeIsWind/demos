<%@page pageEncoding="UTF-8"%>
<script>
/* Environment Variables */
var STATIC_URL = "${STATIC_URL}";
<c:if test="${empty user}">
var USER = null;
</c:if>
<c:if test="${!empty user}">
var USER = {
	id: "${user.user_id}",
	name: "${fn:escapeXml(empty user.uname ? user.mobile : user.uname)}",
	rank: ${user.base_rank}
};
</c:if>
</script>
<script type="text/javascript" src="${STATIC_URL}/core/js/common/common.js"></script>