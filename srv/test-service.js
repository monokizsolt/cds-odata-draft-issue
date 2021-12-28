const cds = require("@sap/cds");

module.exports = async function () {

    const { Header } = this.entities

    this.on("myFunction", Header, async (req) => {

        const [ ID ] = req.params

        const result = await SELECT.from (Header, header => {
            header.ID, header.name, 
            header.items(item => item.name)
            .orderBy(item => item.name)
            .orderBy `item.name`
            .orderBy `name`
            .orderBy(`name`)
            .orderBy('item.name')
        })

        console.log(result)

        return true;
    });
}