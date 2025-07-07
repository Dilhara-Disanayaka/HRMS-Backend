const loginuser=async(req,res)=>{
    try{
    const{user,password}=req.body
    
        const message=await Authenticate(user,password)
        res.json(message)
    }catch(error){
          res.json({sucess:false,message:"invalid login"})
    }
}
const registeruser=async(req,res)=>{
    try{
        const{username,password}=req.body
        const message=await registeruser(username,password)
        res.json(message)
    }catch(error){
        res.json({sucess:false,masage:"fail registration"})
    }
}
export default({loginuser,registeruser})