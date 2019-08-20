.class public Lcom/sherdle/universal/providers/radio/player/RadioService$LocalBinder;
.super Landroid/os/Binder;
.source "RadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/radio/player/RadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/providers/radio/player/RadioService;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$LocalBinder;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/sherdle/universal/providers/radio/player/RadioService;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$LocalBinder;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    return-object v0
.end method
