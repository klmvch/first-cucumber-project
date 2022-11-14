const { Given, When, Then } = require('@wdio/cucumber-framework');

Given("I am on the {string} page", async (page) => {
    await browser.url(`https://the-internet.herokuapp.com/${page}`);
});

When("I login with {word} and {word}", async (username, password) => {
    await $('#username').setValue(username);
    await $('#password').setValue(password);
    await $('button[type="submit"]').click();
});

Then("I should see a flash message saying {string}", async (message) => {
    const elem = await ('#flash');
    await expect($('#flash')).toBeExisting();
    await expect($('#flash')).toHaveTextContaining(message);
});

When("I click on the Status code {int}", async (statusCode) => {
    await $('a[href="status_codes/' + statusCode).click();
});


Then("I see the status code text with {int}", async (statusCode) => {
    const elem = await $('//*[@id="content"]/div/p');
    await expect(elem).toBeExisting();
    await expect(elem).toHaveTextContaining(`This page returned a ${statusCode} status code.`);
});