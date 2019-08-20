.class public Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;
.super Ljava/lang/Object;
.source "RemoteControlClientCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteControlCompat"

.field private static sHasRemoteControlAPIs:Z = false

.field private static sRCCEditMetadataMethod:Ljava/lang/reflect/Method;

.field private static sRCCSetPlayStateMethod:Ljava/lang/reflect/Method;

.field private static sRCCSetTransportControlFlags:Ljava/lang/reflect/Method;

.field private static sRemoteControlClientClass:Ljava/lang/Class;


# instance fields
.field private mActualRemoteControlClient:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 56
    :try_start_0
    const-class v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->getActualRemoteControlClientClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    .line 60
    const-class v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 62
    :try_start_1
    sget-object v5, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 64
    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "RemoteControlCompat"

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error trying to pull field value for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {v6, v4}, Lcom/sherdle/universal/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v5

    const-string v6, "RemoteControlCompat"

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error trying to pull field value for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-static {v6, v4}, Lcom/sherdle/universal/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    const-string v5, "RemoteControlCompat"

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not get real field: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/sherdle/universal/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 77
    :cond_0
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const-string v1, "editMetadata"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sRCCEditMetadataMethod:Ljava/lang/reflect/Method;

    .line 79
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const-string v1, "setPlaybackState"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sRCCSetPlayStateMethod:Ljava/lang/reflect/Method;

    .line 81
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const-string v1, "setTransportControlFlags"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sRCCSetTransportControlFlags:Ljava/lang/reflect/Method;

    .line 84
    sput-boolean v3, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 5

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget-boolean v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/app/PendingIntent;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .locals 6

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-boolean v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/app/PendingIntent;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/os/Looper;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "RemoteControlCompat"

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error creating new instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    return v0
.end method

.method public static getActualRemoteControlClientClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "android.media.RemoteControlClient"

    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public editMetadata(Z)Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;
    .locals 5

    .line 298
    sget-boolean v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 300
    :try_start_0
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sRCCEditMetadataMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 301
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v4

    .line 300
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 303
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    move-object p1, v1

    .line 308
    :goto_0
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;

    invoke-direct {v0, p0, p1, v1}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;Ljava/lang/Object;Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$1;)V

    return-object v0
.end method

.method public final getActualRemoteControlClientObject()Ljava/lang/Object;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    return-object v0
.end method

.method public setPlaybackState(I)V
    .locals 4

    .line 326
    sget-boolean v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-eqz v0, :cond_0

    .line 328
    :try_start_0
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sRCCSetPlayStateMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 330
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public setTransportControlFlags(I)V
    .locals 4

    .line 349
    sget-boolean v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-eqz v0, :cond_0

    .line 351
    :try_start_0
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->sRCCSetTransportControlFlags:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 352
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 351
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 354
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
