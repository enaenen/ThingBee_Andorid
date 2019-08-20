.class public Lcom/sherdle/universal/providers/woocommerce/interceptor/HMACSha1SignatureService;
.super Ljava/lang/Object;
.source "HMACSha1SignatureService.java"

# interfaces
.implements Lcom/sherdle/universal/providers/woocommerce/interceptor/SignatureService;


# static fields
.field private static final CARRIAGE_RETURN:Ljava/lang/String; = "\r\n"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field private static final METHOD:Ljava/lang/String; = "HMAC-SHA1"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bytesToBase64String([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 54
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private doSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "is it signing"

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is 22222222"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p2, "HmacSHA1"

    .line 46
    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p2

    .line 47
    invoke-virtual {p2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string v0, "UTF-8"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/interceptor/HMACSha1SignatureService;->bytesToBase64String([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\r\n"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "Base string cant be null or empty string"

    .line 30
    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/interceptor/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Api secret cant be null or empty string"

    .line 31
    invoke-static {p2, v0}, Lcom/sherdle/universal/providers/woocommerce/interceptor/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x26

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/woocommerce/interceptor/HMACSha1SignatureService;->doSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 36
    new-instance p3, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthSignatureException;

    invoke-direct {p3, p1, p2}, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p3
.end method

.method public getSignatureMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "HMAC-SHA1"

    return-object v0
.end method
