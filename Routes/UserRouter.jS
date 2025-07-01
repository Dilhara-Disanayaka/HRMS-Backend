import express from 'express'
import {loginuser,registeruser} from '../Controllers/UserControllers'
const UserRouter=express.Router();

UserRouter.post('/register',registeruser)
UserRouter.post('/login',loginuser)



export default UserRouter
