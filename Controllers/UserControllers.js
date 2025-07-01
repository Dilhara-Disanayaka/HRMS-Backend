const loginuser=async(req,res)=>{
    try{
    const{email,password}=req.body
    
        const message=await Authenticate(email,password)
        res.json(message)
    }catch(error){
          res.json({sucess:false,message:"invalid login"})
    }
}
const registeruser=async(req,res)=>{
    try{
        const{email,password}=req.body
        const message=await registeruser(email,password)
        res.json(message)
    }catch(error){
        res.json({sucess:false,masage:"fail registration"})
    }
}
export default({loginuser,registeruser})