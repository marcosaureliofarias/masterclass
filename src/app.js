import express from 'express';

const app = express();

app.use(express.json());

const livros = [
    {id: 1, "titulo": "Senhor dos Aneis"},
    {id: 2, "titulo": "O Hobbit"}
]

app.get('/', (req, res) => {
    res.status(200).send("curso de Devops")
})

app.get('/livros', (req, res) => {
    res.status(200).send(livros)
})

export default app