require('dotenv').config();
const { Pool } = require('pg');

const pool = new Pool({
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    database: process.env.DB_NAME,
    password: process.env.DB_PASSWORD,
    port: process.env.DB_PORT,
    ssl: {
        rejectUnauthorized: false
    }
});

async function checkConnection() {
    try {
        const client = await pool.connect();
        console.log("✅ Conexión a PostgreSQL exitosa");
        client.release();
    } catch (err) {
        console.error("❌ Error en la conexión a la base de datos:", err.message);
    }
}

async function setupDatabase() {
    const fs = require('fs');
    const path = require('path');
    const sql = fs.readFileSync(path.join(__dirname, 'setup_db.sql')).toString();

    try {
        await pool.query(sql);
        console.log("✅ Base de datos configurada correctamente");
    } catch (err) {
        console.error("❌ Error configurando la base de datos:", err.message);
    }
}

async function run() {
    await checkConnection();
    await setupDatabase();
    process.exit();
}

run();

module.exports = pool;
