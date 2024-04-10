const cds = require('@sap/cds');
const { onBeforeStaffCreation, onAfterStaffCreation } = require('./src/controller/staffOperations');
module.exports = cds.service.impl(async (srv)=> {
srv.before("CREATE","Staff",onBeforeStaffCreation),

srv.after("CREATE","Staff",onAfterStaffCreation)
});