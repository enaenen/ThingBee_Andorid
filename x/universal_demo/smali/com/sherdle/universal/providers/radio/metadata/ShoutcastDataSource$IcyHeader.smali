.class Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;
.super Ljava/lang/Object;
.source "ShoutcastDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IcyHeader"
.end annotation


# instance fields
.field public bitrate:Ljava/lang/String;

.field public channels:Ljava/lang/String;

.field public genre:Ljava/lang/String;

.field public station:Ljava/lang/String;

.field final synthetic this$0:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;->this$0:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;-><init>(Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;)V

    return-void
.end method
