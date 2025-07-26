import Usermodles from '../Models/Usermodles.js';
import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';
import dotenv from 'dotenv';
dotenv.config();       
//import mailer from '../Config/mailer.js';

const loginuser=async(req,res)=>{
    const{username,password}=req.body
    if (username === 'user1' && password === 'password1') {
       const payload = {
             id:"EMP000001",
             userrole:"Manager"
         };
         const accesstoken = jwt.sign(payload, process.env.ACCESS_TOKEN_SECRET, { expiresIn: '10min' });
         const refreshToken = jwt.sign(payload, process.env.REFRESH_TOKEN_SECRET, { expiresIn: '1h' });
         res.cookie('refreshToken', refreshToken, { httpOnly: true, secure: true });
         res.status(200).json({accesstoken,role:'Manager' });
         console.log(accesstoken)
         return
      }
    
    try{
    const{username,password}=req.body

        const result=await Usermodles.findByUsername(username)
          if(result.length===0){        
                   console.log(result)
                   return res.status(404).json({success:false,message:"Invalid username ",code:"SSS-002"})
          } else {
              console.log('Plain password:', password);
              console.log('Hashed password from DB:', result[0].password);
              const isMatch = await bcrypt.compare(password, result[0].password);
              console.log(isMatch)
             if (!isMatch) {
                   console.log('Password mismatch');
                   return res.status(404).json({ success: false, message: "Invalid password", code: "SSS-003" });
            } else {
    // Password is correct — create session or return success
            const payload = {
             id: result[0].id,
             userrole: result[0].role
         };
         const accesstoken = jwt.sign(payload, process.env.JWT_SECRET, { expiresIn: '10min' });
         const refreshToken = jwt.sign(payload, process.env.JWT_SECRET, { expiresIn: '1h' });
          res.cookie('refreshToken', refreshToken, { httpOnly: true, secure: true });
          res.status(200).json({ success: true, data: result[0], accesstoken });
      }
    }    
} catch (error) {
  res.status(500).json({ success: false, message: error.message });
  console.log(error);
}
};
const registeruser=async(req,res)=>{
    
        const user=req.body
        //console.log(user);
        if(!user.username || !user.password || !user.role || !user.employee_id){
            return res.status(400).json({success:false,message:"All fields are required"})
        }
      try{
        //console.log('Registering user:', user);
        const message=await Usermodles.userregister(user)
        return res.json(message)
    }catch(error){
        console.error('Error during registration:', error);
        return res.json({success:false,message:"fail registration"})
    }
}
const logoutuser=async(req,res)=>{
  try {
    res.clearCookie('refreshToken');
    res.status(200).json({ success: true, message: "Logged out successfully" });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
}
const getUserDetails = async (req, res) => {
    const employee_id = req.user.employee_id;

    try {
        const user = await Usermodels.getUserDetailsByEmployeeID(employee_id);
        return res.status(200).json(user);
    } 
    catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
}

const updateuserdetails=async(req,res)=>{
  
    const inputData = req.body;
    const id=req.user.id

    if(!inputData.name || inputData.name === '') {
        return res.status(400).json({ message: 'Name is required' });
    }

    if(!inputData.email || inputData.email === '') {
        return res.status(400).json({ message: 'Email is required' });
    }

    if(!inputData.phone || inputData.phone === '') {
        return res.status(400).json({ message: 'Contact number is required' });
    }

    if(!inputData.address || inputData.address === '') {
        return res.status(400).json({ message: 'Address is required' });
    }

    if(!inputData.birthday || inputData.birthday === '') {
        return res.status(400).json({ message: 'Birthday is required' });
    }

    if(!inputData.marital_status || inputData.marital_status === '') {
        return res.status(400).json({ message: 'Marital status is required' });
    }

    if(!inputData.gender || inputData.gender === '') {
        return res.status(400).json({ message: 'Gender is required' });
    }

    try {
        const currentDetails = await Usermodels.getUserDetailsBriefById(employee_id);

        if((!!currentDetails.supervisor || !!inputData.supervisor) && currentDetails.supervisor !== inputData.supervisor) {
            return res.status(400).json({ message: 'Supervisor cannot be changed' });
        }

        if(currentDetails.job_title_id !== inputData.job_title_id) {
            return res.status(400).json({ message: 'Job Title cannot be changed' });
        }

        if(currentDetails.pay_grade !== inputData.pay_grade) {
            return res.status(400).json({ message: 'Pay Grade cannot be changed' });
        }

        if(currentDetails.employment_status !== inputData.employment_status) {
            return res.status(400).json({ message: 'Employment Status cannot be changed' });
        }

        if(currentDetails.branch_id !== inputData.branch_id) {
            return res.status(400).json({ message: 'Branch cannot be changed' });
        }

        const updatedDetails = {
            ...currentDetails,
            name : inputData.name,
            email : inputData.email,
            phone : inputData.phone,
            address : inputData.address,
            birthday : inputData.birthday,
            marital_status : inputData.marital_status,
            gender : inputData.gender,
        }

        const user = await Usermodles.updateUserByEmployeeId(inputData);
        return res.status(200).json(user);
    } 
    catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
  res.status(200).json({ success: true, message: "User details updated successfully" });
  
  
};
const getcustomattributes=async(req,res)=>{
  const employee_id = req.user.employee_id;
  try {
    const attributes = await Usermodles.getCustomAttributesById(employee_id);
    res.status(200).json({ success: true, data: attributes });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
}
const updatecustomattributes=async(req,res)=>{
    const employee_id = req.user.employee_id;
    const customAttributes = req.body;

    if(!customAttributes || customAttributes.length === 0) {
        return res.status(400).json({ message: 'Custom Attributes is required' });
    }
    try{
      const attributes=await usermodles.getCustomAttributes()
      const newAttributes = attributes.map(attr => {
        if(customAttributes[attr.attributes.name])

          return {
            employee_id: employee_id,
            attribute_id: attr.attribute_id,
            value: customAttributes[attr.attributes.name] || null
        };
        
        
      });

      const addedAttributes = await usermodles.updateCustomAttributesByEmployeeId(employee_id,json.stringify(newAttributes));
      res.status(200).json({ success: true, message: 'Custom Attributes updated successfully' });
    }catch(error){
        res.status(500).json({ success: false, message: error.message });
    }
}    
const getDependants = async (req, res) => {
    const employee_id = req.user.employee_id;

    try {
        const dependants = await User.getDependantsByEmployeeId(employee_id);
        return res.status(200).json(dependants);
    }
    catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
};
const addDependant = async (req, res) => {
    const employee_id = req.user.employee_id;
    const inputData = req.body;

    if (!inputData.name || !inputData.relationship || !inputData.birthday|| !inputData.gender || inputData.relationship === '' || inputData.birthday === ''|| inputData.name === ''||inputData.gender === '') {
        return res.status(400).json({ message: 'Name, relationship, gender and birthday are required' });
    }

    try {
        const dependant = await User.addDependant(employee_id, inputData.name, inputData.relationship, inputData.birthday, inputData.gender);
        return res.status(201).json(dependant);
    }
    catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
};
const updatedependant=async (req, res) => {
  const employee_id = req.user.employee_id;
  const inputData= req.body;
  if (!inputData.dependant_id || !inputData.name || !inputData.derelationship || !inputData.birthday||!inputData.gender) {
    return res.status(400).json({ message: 'All fields are required' });
  }

  try {
        const oldDependants = await Usermodles.getDependantsByEmployeeId(employee_id);

        const oldDependant = oldDependants.find(dep => dep.dependant_id === inputData.dependant_id);

        if(!oldDependant) {
            return res.status(400).json({ message: 'Dependant not found' });
        }

        const dependant = await Usermodels.updateDependant({
            dependant_id : inputData.dependant_id,
            name : inputData.name,
            birthday : inputData.birthday,
            relation : inputData.relation,
            gender : inputData.gender
        });
        return res.status(200).json(dependant);
    }
  catch (error) {
    console.error(error);
    return res.status(500).json({ message: 'Internal server error' });
  }
};
const deleteDependant = async (req, res) => {
    const employee_id = req.user.employee_id;
    const dependant_id = req.params.id;

    try {
        const oldDependants = await Usermodels.getDependantsByEmployeeId(employee_id);
        console.log(oldDependants, dependant_id);
        const oldDependant = oldDependants.find(dep => dep.dependant_id === dependant_id);

        if(!oldDependant) {
            return res.status(400).json({ message: 'Dependant not found' });
        }

        const dependant = await User.deleteDependant(dependant_id);
        return res.status(200).json(dependant);
    }
    catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
}

const getEmergencyContacts = async (req, res) => {
    const employee_id = req.user.employee_id;

    try {
        const emergencyContacts = await Usermodels.getEmergencyContactsByEmployeeId(employee_id);
        return res.status(200).json(emergencyContacts);
    } 
    catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
}

const addEmergencyContact = async (req, res) => {
    const employee_id = req.user.employee_id;
    const inputData = req.body;

    if(!inputData.contact_no || inputData.contact_no === '') {
        return res.status(400).json({ message: 'Contact Number is required' });
    }

    if(!inputData.contact_name || inputData.contact_name === '') {
        return res.status(400).json({ message: 'Name is required' });
    }

    if(!inputData.relationship || inputData.relationship === '') {
        return res.status(400).json({ message: 'Relationship is required' });
    }

    try {
        const emergencyContact = await Usermodels.addNewEmergencyContact({
            employee_id : employee_id,
            contact_no : inputData.contact_no,
            contact_name : inputData.contact_name,
            relationship : inputData.relationship
        });
        return res.status(200).json(emergencyContact);
    }
    catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
}

const updateEmergencyContact = async (req, res) => {
    const employee_id = req.user.employee_id;
    const {oldData, newData} = req.body;

    if(!oldData || !newData) {
        return res.status(400).json({ message: 'Old and New Data is required' });
    }

    if(!oldData.contact_no) {
        return res.status(400).json({ message: 'Old Contact Number is required' });
    }

    if(!newData.contact_no) {
        return res.status(400).json({ message: 'New Contact Number is required' });
    }

    if(!newData.contact_name) {
        return res.status(400).json({ message: 'Name is required' });
    }

    if(!newData.relationship) {
        return res.status(400).json({ message: 'Relationship is required' });
    }

    try {
        const oldContacts = await Usermodels.getEmergencyContactsByEmployeeId(employee_id);

        const oldContact = oldContacts.find(contact => contact.contact_no === oldData.contact_no);

        if(!oldContact) {
            return res.status(400).json({ message: 'Contact not found' });
        }

        const emergencyContact = await Usermodels.updateEmergencyContact({
            employee_id : employee_id,
            old_contact_no : oldContact.contact_no,
            new_contact_no : newData.contact_no,
            relationship : newData.relationship,
            contact_name : newData.contact_name
        });
        return res.status(200).json(emergencyContact);
    }
    catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
}

const deleteEmergencyContact = async (req, res) => {
    const employee_id = req.user.employee_id;
    const contact_no = req.params.contact_no;

    try {
        const oldContacts = await Usermodels.getEmergencyContactsByEmployeeId(employee_id);

        const oldContact = oldContacts.find(con => con.contact_no === contact_no);

        if(!oldContact) {
            return res.status(400).json({ message: 'Contact not found' });
        }

        const emergencyContact = await Usermodels.deleteEmergencyContact(employee_id, contact_no);
        return res.status(200).json(emergencyContact);
    }
    catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
}

const forgetPassword = async (req, res) => {
    const { username, email } = req.body;

    try {
        const users = await User.findByUsername(username);

        if (users.length === 0) {
            return res.status(401).json({ message: 'Invalid username' });
        }

        const user = users[0];

        const userDetails = await Usermodels.getUserDetailsBriefById(user.employee_id);

        if(userDetails.email !== email) {
            return res.status(401).json({ message: 'Invalid email' });
        }

        const newPassword = generatePassword();

        const hashedPassword = await bcrypt.hash(newPassword, 10);

        const updatedUser = await Usermodels.updateUser({
            username: user.username,
            password: hashedPassword,
            role: user.role,
            employee_id: user.employee_id
        })

        console.log(user);

        mailer.sendMail({
            from: process.env.MAIL_USER,
            to: email,
            subject: 'Forget Password',
            text: `Your new password is ${newPassword}`
        });


        res.status(200).json({ updatedUser });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Internal server error' });
    }
}
const refreshToken = (req, res) => {
    const refreshToken = req.cookies?.refreshToken;

    if (!refreshToken) {
        return res.status(401).json({ message: 'Unauthorized' });
    }

    jwt.verify(refreshToken, process.env.REFRESH_TOKEN_SECRET, (error, user) => {
        if (error) {
            return res.status(403).json({ message: 'Forbidden' });
        }

        const payload = { employee_id: user.employee_id, role: user.role };

        const accessToken = jwt.sign(payload, process.env.ACCESS_TOKEN_SECRET, { expiresIn: '10min' });
        const newRefreshToken = jwt.sign(payload, process.env.REFRESH_TOKEN_SECRET, { expiresIn: '1h' });

        res.cookie('refreshToken', newRefreshToken, { httpOnly: true });
        res.status(200).json({ accessToken });
    });
};


export default {
  loginuser,
  registeruser,
  logoutuser,
  updateuserdetails,
  getcustomattributes,
  updatecustomattributes,
  getDependants,
  addDependant,
  updatedependant,
  deleteDependant,
  getEmergencyContacts,
  addEmergencyContact,
  updateEmergencyContact,
  deleteEmergencyContact,
  forgetPassword,
  getUserDetails,
  refreshToken};