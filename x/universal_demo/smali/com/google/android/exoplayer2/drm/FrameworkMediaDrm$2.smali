.class Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$2;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

.field final synthetic val$request:Landroid/media/MediaDrm$KeyRequest;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;Landroid/media/MediaDrm$KeyRequest;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$2;->this$0:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$2;->val$request:Landroid/media/MediaDrm$KeyRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$2;->val$request:Landroid/media/MediaDrm$KeyRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$2;->val$request:Landroid/media/MediaDrm$KeyRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
