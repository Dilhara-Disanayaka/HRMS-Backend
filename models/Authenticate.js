const Authenticate=async(email,password)=>{
    const query=`GET EMPLOYEE BY EMAIL AND PASSWORD(?,?)`;
    const [rows]=await db.query(query,[email,password]) 
    return rows[0];
}