.class public final Lcom/google/android/exoplayer2/video/DummySurface;
.super Landroid/view/Surface;
.source "DummySurface.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
    }
.end annotation


# static fields
.field private static final EGL_PROTECTED_CONTENT_EXT:I = 0x32c0

.field public static final SECURE_SUPPORTED:Z

.field private static final TAG:Ljava/lang/String; = "DummySurface"


# instance fields
.field public final secure:Z

.field private final thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

.field private threadReleased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 77
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    const/16 v2, 0x3055

    .line 78
    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "EGL_EXT_protected_content"

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/google/android/exoplayer2/video/DummySurface;->SECURE_SUPPORTED:Z

    goto :goto_0

    .line 81
    :cond_1
    sput-boolean v1, Lcom/google/android/exoplayer2/video/DummySurface;->SECURE_SUPPORTED:Z

    :goto_0
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V
    .locals 0

    .line 110
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 111
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    .line 112
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/video/DummySurface;->secure:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/DummySurface$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/DummySurface;-><init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method private static assertApiLevel17OrHigher()V
    .locals 2

    .line 131
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported prior to API level 17"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static newInstanceV17(Z)Lcom/google/android/exoplayer2/video/DummySurface;
    .locals 1

    .line 103
    invoke-static {}, Lcom/google/android/exoplayer2/video/DummySurface;->assertApiLevel17OrHigher()V

    if-eqz p0, :cond_1

    .line 104
    sget-boolean v0, Lcom/google/android/exoplayer2/video/DummySurface;->SECURE_SUPPORTED:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 105
    new-instance v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;-><init>()V

    .line 106
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->init(Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 117
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->threadReleased:Z

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->release()V

    const/4 v1, 0x1

    .line 125
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->threadReleased:Z

    .line 127
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
