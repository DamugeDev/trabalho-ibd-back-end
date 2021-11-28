const conn = require('../database/connection').conn

exports.loginStudent = async(req, res) => {
    const requestData = req.body
    const list = []
    const data = []

    await conn.query(`SELECT * FROM students`, (err, rows, fields) => {
        if (err) {
            return res
                .status(400)
                .json({ error: true, message: 'Erro na conexao a base de dados' })
        }

        rows.forEach((student) => {
            list.push(student)
        })

        list.forEach((student) => {
            if (student.id_student == requestData.id_student) {
                data.push(student)
            }
        })
        if (data == []) {
            return res
                .status(400)
                .json({ error: true, message: 'Usuario inexistente' })
        }
        return res.status(200).json({ error: false, data: data })
    })
}