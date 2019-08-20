.class public Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthSignatureException;
.super Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthException;
.source "OAuthSignatureException.java"


# static fields
.field private static final MSG:Ljava/lang/String; = "Error while signing string: %s"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "Error while signing string: %s"

    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
