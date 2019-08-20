.class Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;
.super Ljava/lang/Object;
.source "OggInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PacketInfoHolder"
.end annotation


# instance fields
.field public segmentCount:I

.field public size:I

.field final synthetic this$0:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;->this$0:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
