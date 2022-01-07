import express, { Request, Response } from "express"

const router = express.Router()

router.get('/', (req: Request, res: Response) => {
    return res.send('hello from express')
})

export { router as Router }