import db from '../Config/db.js';
const findByUsername = async (username) => {
  try {
    const query = `CALL GET_EMPLOYEE_BY_USERNAME(?)`;
    const [rows] = await db.query(query, [username]);
    
    return rows;
  } catch (error) {
    console.error('❌ Query failed:', error.message);
    throw error;
  }
};

const getUserDetailsByEmployeeID = async (employee_id) => {
  try {
    const query = `CALL GET_USER_DETAILS_BY_EMPLOYEE_ID(?)`;
    const [rows] = await db.query(query, [employee_id]);
    return rows;
  } catch (error) {
    console.error('❌ Query failed:', error.message);
    throw error;
  }
};
const getUserDetailsBriefById = async (employee_id) => {
  try {
    const query = `CALL GET_USER_DETAILS_BRIEF_BY_ID(?)`;
    const [rows] = await db.query(query, [employee_id]);
    return rows;
  } catch (error) {
    console.error('❌ Query failed:', error.message);
    throw error;
  }
}
const updateUserByEmployeeId = async (employee) => {
  try {
    
    const query = `CALL UPDATE_EMPLOYEE_BY_ID(?,?,?,?,?,?,?,?,?,?,?,?,?)`;
    const [rows] = await db.query(query, [
        employee.employee_id,
        employee.name,
        employee.email,
        employee.address,
        employee.gender,
        employee.birthday,
        employee.phone,
        employee.marital_status,
        employee.supervisor,
        employee.job_title_id,
        employee.pay_grade,
        employee.employment_status,
        employee.branch_id        
    ]);
    return rows[0];
  } catch (error) {
    console.error('❌ Query failed:', error.message);
    throw error;
  }
}
const getEmergencyContactsByEmployeeId = async (id) => {
    const query = `CALL GET_EMERGENCY_CONTACT_BY_EMPLOYEE_ID(?)`;
    const [rows] = await db.query(query, [id]);
    return rows[0];
}
const getCustomAttributesByEmployeeId = async (employeeId) => {
    const query = `CALL GET_EMPLOYEE_ATTRIBUTE_BY_EMPLOYEE_ID(?)`;
    const [rows] = await db.query(query, [employeeId]);
    return rows[0];
}

const updateCustomAttributesByEmployeeId = async (employeeId, customAttributes) => {
    const query = `CALL UPDATE_EMPLOYEE_ATTRIBUTE(?,?)`;
    const [rows] = await db.query(query, [employeeId, customAttributes]);
    return rows[0];
}

const addNewDependant = async (dependant) => {
    const query = `CALL ADD_DEPENDANT(?,?,?,?,?)`;
    const [rows] = await db.query(query, [
        dependant.name,
        dependant.employee_id,
        dependant.birthday,
        dependant.relation,
        dependant.gender,
    ]);
    return rows[0];
}

const addNewEmergencyContact = async (emergencyContact) => {
    const query = `CALL ADD_EMERGENCY_CONTACT(?,?,?,?)`;
    const [rows] = await db.query(query, [
        emergencyContact.employee_id,
        emergencyContact.contact_name,
        emergencyContact.relationship,
        emergencyContact.contact_no,
    ]);
    return rows[0];
}

const updateDependant = async (dependant) => {
    const query = `CALL UPDATE_DEPENDANT(?,?,?,?,?)`;
    const [rows] = await db.query(query, [
        dependant.dependant_id,
        dependant.name,
        dependant.birthday,
        dependant.relation,
        dependant.gender,
    ]);
    return rows[0];
}

const deleteDependant = async (dependantId) => {
    const query = `CALL DELETE_DEPENDANT(?)`;
    const [rows] = await db.query(query, [dependantId]);
    return rows[0];
}

const updateEmergencyContact = async (emergencyContact) => {
    const query = `CALL UPDATE_EMERGENCY_CONTACT(?,?,?,?,?)`;
    const [rows] = await db.query(query, [
        emergencyContact.employee_id,
        emergencyContact.old_contact_no,
        emergencyContact.new_contact_no,
        emergencyContact.relationship,
        emergencyContact.contact_name,
    ]);
    console.log(rows);
    return rows[0];
}

const deleteEmergencyContact = async (employee_id, contact_no) => {
    const query = `CALL DELETE_EMERGENCY_CONTACT(?,?)`;
    const [rows] = await db.query(query, [employee_id, contact_no]);
    return rows[0];
}

const getCustomAttributes = async () => {
    const query = `CALL GET_CUSTOM_ATTRIBUTE()`;
    const [rows] = await db.query(query);
    return rows[0];
}
const updateUser = async (user) => {
    const query = `CALL UPDATE_USER_BY_USERNAME(?,?,?,?)`;
    const [rows] = await db.query(query, [user.username, user.password, user.role, user.employee_id]);
    return rows[0];
}
const getDependantsByEmployeeId = async (id) => {
    const query = `CALL GET_DEPENDANTS_BY_EMPLOYEE_ID(?)`;
    const [rows] = await db.query(query, [id]);
    return rows[0];
}

export default {
  findByUsername,
  getUserDetailsByEmployeeID,
  getUserDetailsBriefById,
  updateUserByEmployeeId,
  getEmergencyContactsByEmployeeId,
  getCustomAttributesByEmployeeId,
  updateCustomAttributesByEmployeeId,
  addNewDependant,
  addNewEmergencyContact,
  updateDependant,
  deleteDependant,
  updateEmergencyContact,
  deleteEmergencyContact,
  getCustomAttributes,
  updateUser,
  getDependantsByEmployeeId
};
