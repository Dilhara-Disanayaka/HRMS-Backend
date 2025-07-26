import express from 'express'
import UserControllers from '../Controllers/UserControllers.js'
const UserRouter=express.Router();

//UserRouter.post('/register',UserControllers.registeruser)
UserRouter.post('/login',UserControllers.loginuser)
UserRouter.post('/register',UserControllers.registeruser)
UserRouter.get('/refresh_token', UserControllers.refreshToken)
UserRouter.get('/',UserControllers.getUserDetails)
export default UserRouter
