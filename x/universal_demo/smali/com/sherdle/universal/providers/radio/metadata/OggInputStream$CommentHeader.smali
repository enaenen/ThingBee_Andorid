.class Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;
.super Ljava/lang/Object;
.source "OggInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentHeader"
.end annotation


# instance fields
.field public final comments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public length:I

.field final synthetic this$0:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;

.field public vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;->this$0:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;->comments:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const-string v0, ""

    .line 263
    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;->vendor:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;->comments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 265
    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;->length:I

    return-void
.end method
