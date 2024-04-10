
const onBeforeStaffCreation = async (req)=>{
    console.log(req);
};

const onAfterStaffCreation = async (req)=>{
    console.log(req);
}
module.exports = {
    onBeforeStaffCreation,
    onAfterStaffCreation
}