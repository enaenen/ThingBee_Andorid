.class public Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlHelper;
.super Ljava/lang/Object;
.source "RemoteControlHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteControlHelper"

.field private static sHasRemoteControlAPIs:Z = false

.field private static sRegisterRemoteControlClientMethod:Ljava/lang/reflect/Method;

.field private static sUnregisterRemoteControlClientMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    :try_start_0
    const-class v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->getActualRemoteControlClientClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    const-class v1, Landroid/media/AudioManager;

    const-string v2, "registerRemoteControlClient"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlHelper;->sRegisterRemoteControlClientMethod:Ljava/lang/reflect/Method;

    .line 46
    const-class v1, Landroid/media/AudioManager;

    const-string v2, "unregisterRemoteControlClient"

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlHelper;->sUnregisterRemoteControlClientMethod:Ljava/lang/reflect/Method;

    .line 48
    sput-boolean v3, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlHelper;->sHasRemoteControlAPIs:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerRemoteControlClient(Landroid/media/AudioManager;Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;)V
    .locals 3

    .line 62
    sget-boolean v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlHelper;->sHasRemoteControlAPIs:Z

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlHelper;->sRegisterRemoteControlClientMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->getActualRemoteControlClientObject()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    .line 67
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RemoteControlHelper"

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static unregisterRemoteControlClient(Landroid/media/AudioManager;Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;)V
    .locals 3

    .line 76
    sget-boolean v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlHelper;->sHasRemoteControlAPIs:Z

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlHelper;->sUnregisterRemoteControlClientMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->getActualRemoteControlClientObject()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    .line 81
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RemoteControlHelper"

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
