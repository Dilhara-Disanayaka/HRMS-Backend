import express from 'express'


const UserRouter=express.Router();

UserRouter.post('/register',registeruser)
UserRouter.post('/login',loginuser)



export default UserRouter
