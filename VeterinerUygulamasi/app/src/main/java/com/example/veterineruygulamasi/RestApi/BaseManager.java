package com.example.veterineruygulamasi.RestApi;

public class BaseManager {
    public RestApi getRestApiClient()
    {
        RestApiClient restApiClient = new RestApiClient(BaseUrl.bilgi_URL);
        return restApiClient.getRestApi();
    }
}
