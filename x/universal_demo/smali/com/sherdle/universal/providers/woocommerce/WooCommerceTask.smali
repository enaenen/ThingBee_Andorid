.class public Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;
.super Landroid/os/AsyncTask;
.source "WooCommerceTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;,
        Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static CATEGORIES:I = 0xa

.field private static PARAM_ORDER_BY:Ljava/lang/String; = "&orderby=id"

.field private static PARAM_PER_PAGE:Ljava/lang/String; = "?per_page=20"

.field private static PARAM_PUBLISHED:Ljava/lang/String; = "&status=publish"

.field private static client:Lokhttp3/OkHttpClient;


# instance fields
.field private api:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

.field private callback:Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;

.field private type:Ljava/lang/Class;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->type:Ljava/lang/Class;

    .line 129
    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->callback:Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;

    .line 130
    iput-object p3, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->url:Ljava/lang/String;

    .line 131
    iput-object p4, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->api:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;-><init>(Ljava/lang/Class;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->PARAM_PER_PAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->PARAM_PUBLISHED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->PARAM_ORDER_BY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 38
    sget v0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->CATEGORIES:I

    return v0
.end method

.method private getResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->api:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->getRestAPIClient(Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;)Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->client:Lokhttp3/OkHttpClient;

    .line 182
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 183
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 185
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    const-string v0, "x-wp-totalpages"

    .line 186
    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getRestAPIClient(Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;)Lokhttp3/OkHttpClient;
    .locals 3

    .line 191
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;-><init>()V

    .line 193
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getCustomerKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;->consumerKey(Ljava/lang/String;)Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getCustomerSecret()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;->consumerSecret(Ljava/lang/String;)Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;->build()Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;

    move-result-object p0

    .line 197
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 198
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x19

    .line 199
    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 200
    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    const-wide/16 v0, 0x1e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 201
    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->client:Lokhttp3/OkHttpClient;

    .line 217
    :cond_0
    sget-object p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, p1

    .line 143
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, p1

    :goto_1
    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->api:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog;->showDialogIfAuthFailed(Ljava/lang/String;Landroid/content/Context;)V

    return-object p1

    .line 151
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 152
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 154
    :try_start_2
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->type:Ljava/lang/Class;

    const-class v3, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    .line 158
    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getPurchasable()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getExternalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    .line 160
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->type:Ljava/lang/Class;

    const-class v3, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;

    .line 163
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 164
    :cond_3
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->type:Ljava/lang/Class;

    const-class v3, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 165
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;

    .line 166
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 167
    :cond_4
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->type:Ljava/lang/Class;

    const-class v3, Lcom/sherdle/universal/providers/woocommerce/model/users/User;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sherdle/universal/providers/woocommerce/model/users/User;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/providers/woocommerce/model/users/User;

    .line 169
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 172
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_6
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->callback:Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;

    invoke-interface {v0, p1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;->success(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->callback:Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;

    invoke-interface {p1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;->failed()V

    :goto_0
    return-void
.end method
