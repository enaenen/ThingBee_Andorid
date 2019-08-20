.class public final Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;
.super Ljava/lang/Object;
.source "OAuthInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;->consumerKey:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "consumerKey not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;->consumerSecret:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "consumerSecret not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;->consumerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;->consumerSecret:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$1;)V

    return-object v0
.end method

.method public consumerKey(Ljava/lang/String;)Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 141
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "consumerKey = null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;->consumerKey:Ljava/lang/String;

    return-object p0
.end method

.method public consumerSecret(Ljava/lang/String;)Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 147
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "consumerSecret = null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;->consumerSecret:Ljava/lang/String;

    return-object p0
.end method
