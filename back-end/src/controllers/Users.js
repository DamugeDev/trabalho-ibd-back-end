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

exports.updateStudent = async(req, res) => {
    const requestData = req.body
    const sql =
        'UPDATE students SET name = ? , type_document = ? WHERE id_student = ?'
    conn.query(
        sql, [requestData.name, requestData.type_document, requestData.id_student],
        (err, result) => {
            if (err) {
                return res
                    .status(400)
                    .json({ error: true, message: 'Failed on update' })
            }
            return res.status(200).json({ error: false, data: 'Updated' })
        },
    )
}

exports.readStudents = async(req, res) => {
    const list = []

    await conn.query('SELECT * FROM students', (err, rows, fields) => {
        if (err) {
            return res
                .status(400)
                .json({ error: true, message: 'Failed to fetch data' })
        }

        rows.forEach((student) => {
            list.push(student)
        })

        return res.status(200).json({ error: false, data: list })
    })
}