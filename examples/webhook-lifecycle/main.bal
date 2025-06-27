import ballerina/io;
import ballerinax/mailchimp.'transactional as mailchimp;

configurable string key = ?;
configurable string webhookURL = ?;
const string serviceUrl = "https://mandrillapp.com/api/1.0";

final mailchimp:Client mailchimp = check new ({}, serviceUrl);

public function main() returns error? {
    mailchimp:WebhooksAddBody addPayload = {
        key,
        url: webhookURL,
        description: "Test webhook"
    };

    mailchimp:InlineResponse20075 addResult = check mailchimp->/webhooks/add.post(addPayload);
    io:println("Webhook created:", addResult.id, addResult);
    mailchimp:WebhooksInfoBody infoPayLoad = {
        key,
        id: <int>addResult.id
    };

    mailchimp:InlineResponse20076 infoResult = check mailchimp->/webhooks/info.post(infoPayLoad);
    io:println("Webhook Info: ", infoResult);

    mailchimp:WebhooksUpdateBody updatePayload = {
        key,
        id: <decimal>addResult.id,
        url: webhookURL
    };
    mailchimp:InlineResponse20077 updateResult = check mailchimp->/webhooks/update.post(updatePayload);
    io:println("Updated webhook :", updateResult);

    mailchimp:WebhooksInfoBody deletePayload = {
        key,
        id: <int>addResult.id
    };
    mailchimp:InlineResponse20078 delResult = check mailchimp->/webhooks/delete.post(deletePayload);
    io:println("Webhook deleted: ", delResult);

}
