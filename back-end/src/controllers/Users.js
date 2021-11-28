const conn = require('../database/connection').conn

exports.newStudent = async(req, res) => {
    const requestData = req.body

    conn.query(
        'INSERT INTO students SET ?',
        requestData,
        (err, results, fields) => {
            if (err) {
                console.log(err)
                return res.status(400).json({ error: true, message: 'Not created' })
            }
            console.log(results)
            return res.status(201).json({ error: false, data: 'Created' })
        },
    )
}