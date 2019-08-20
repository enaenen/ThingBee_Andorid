.class Lcom/sherdle/universal/providers/tv/TvFragment$ControlsVisibilityListener;
.super Ljava/lang/Object;
.source "TvFragment.java"

# interfaces
.implements Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/tv/TvFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlsVisibilityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/tv/TvFragment;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/tv/TvFragment;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/sherdle/universal/providers/tv/TvFragment$ControlsVisibilityListener;->this$0:Lcom/sherdle/universal/providers/tv/TvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/tv/TvFragment;Lcom/sherdle/universal/providers/tv/TvFragment$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/tv/TvFragment$ControlsVisibilityListener;-><init>(Lcom/sherdle/universal/providers/tv/TvFragment;)V

    return-void
.end method


# virtual methods
.method public onControlsHidden()V
    .locals 0

    return-void
.end method

.method public onControlsShown()V
    .locals 0

    return-void
.end method
