const conn = require('../database/connection').conn;

exports.loginStudent = (req, res) => {
  const requestData = req.body;
  const list = [];
  const data = [];

  conn.query(`SELECT * FROM students`, (err, rows, fields) => {
    if (err) {
      return res
        .status(400)
        .json({ error: true, message: 'Failed to fetch database' });
    }

    rows.forEach((student) => {
      list.push(student);
    });

    list.forEach((student) => {
      if (
        requestData.email == student.email &&
        requestData.password == student.password
      ) {
        data.push(student);
      }
    });

    if (data.length == 0) {
      return res.status(404).json({ error: true, message: 'Not found' });
    } else {
      return res.status(200).json({ error: false, data: data });
    }
  });
};

exports.loginAdmin = (req, res) => {
  const requestData = req.body;
  const list = [];
  const data = [];

  conn.query(`SELECT * FROM admin`, (err, rows, fields) => {
    if (err) {
      return res
        .status(400)
        .json({ error: true, message: 'Failed to fetch database' });
    }

    rows.forEach((admin) => {
      list.push(admin);
    });

    list.forEach((admin) => {
      if (
        requestData.email == admin.email &&
        requestData.password == admin.password
      ) {
        data.push(admin);
      }
    });

    if (data.length == 0) {
      return res.status(404).json({ error: true, message: 'Not found' });
    } else {
      return res.status(200).json({ error: false, data: data });
    }
  });
};
