async function main () {
    const address = '0x350c398541f8ba03B3FEb8dDED7E8C569feA9F29';
    const Box = await ethers.getContractFactory('Box');
    const box = await Box.attach(address);

    await box.store(139);
    const value = await box.retrieve();
    console.log('Box value is', value.toString());

}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });
