import Usermodles from '../Models/Usermodles.js';
import bycrypt from 'bcrypt';
import jwt from 'jsonwebtoken';
import { use } from 'react';

const loginuser=async(req,res)=>{
    try{
    const{username,password}=req.body

        const result=await Usermodles.Authenticate(username)
          if(result.length===0){        
                   console.log(result)
                   return res.status(404).json({success:false,message:"Invalid username ",code:"SSS-002"})
          } else {
              const isMatch = await bycrypt.compare(password, result[0].password);
             if (!isMatch) {
                   return res.status(401).json({ success: false, message: "Invalid password", code: "SSS-003" });
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
}
};
const registeruser=async(req,res)=>{
    try{
        const{username,password}=req.body
        const message=await registeruser(username,password)
        res.json(message)
    }catch(error){
        res.json({sucess:false,massage:"fail registration"})
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
export default { loginuser, registeruser, logoutuser };

const updateuserdetails=async(req,res)=>{
  try {
    const inputdata = req.body;
    const id=req.user.id

    const result = await Usermodles.UpdateUser(id, inputdata);
    const employee_id = req.user.employee_id;
    const inputData = req.body;

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
        const currentDetails = await User.getUserDetailsBriefById(employee_id);

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
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
  
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

        const dependant = await User.updateDependant({
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