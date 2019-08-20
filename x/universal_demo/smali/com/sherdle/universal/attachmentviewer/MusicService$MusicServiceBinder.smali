.class public Lcom/sherdle/universal/attachmentviewer/MusicService$MusicServiceBinder;
.super Landroid/os/Binder;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/attachmentviewer/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/attachmentviewer/MusicService;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/attachmentviewer/MusicService;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/MusicService$MusicServiceBinder;->this$0:Lcom/sherdle/universal/attachmentviewer/MusicService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/sherdle/universal/attachmentviewer/MusicService;
    .locals 2

    const-string v0, "MusicService"

    const-string v1, "MusicServiceBinder: getService() called"

    .line 43
    invoke-static {v0, v1}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService$MusicServiceBinder;->this$0:Lcom/sherdle/universal/attachmentviewer/MusicService;

    return-object v0
.end method
