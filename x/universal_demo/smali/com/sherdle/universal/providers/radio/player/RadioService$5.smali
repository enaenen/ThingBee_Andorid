.class Lcom/sherdle/universal/providers/radio/player/RadioService$5;
.super Ljava/lang/Object;
.source "RadioService.java"

# interfaces
.implements Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/radio/player/RadioService;->onMetadataReceived(Lcom/sherdle/universal/providers/radio/metadata/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

.field final synthetic val$data:Lcom/sherdle/universal/providers/radio/metadata/Metadata;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/radio/player/RadioService;Lcom/sherdle/universal/providers/radio/metadata/Metadata;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$5;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    iput-object p2, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$5;->val$data:Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finished(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$5;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-static {v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->access$100(Lcom/sherdle/universal/providers/radio/player/RadioService;)Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$5;->val$data:Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    invoke-virtual {v0, p1, v1}, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->startNotify(Landroid/graphics/Bitmap;Lcom/sherdle/universal/providers/radio/metadata/Metadata;)V

    .line 496
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$5;->val$data:Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    invoke-static {v0, p1}, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->onMetaDataReceived(Lcom/sherdle/universal/providers/radio/metadata/Metadata;Landroid/graphics/Bitmap;)V

    return-void
.end method
