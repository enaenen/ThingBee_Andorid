.class public Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;
.super Ljava/lang/Object;
.source "RemoteControlClientCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditorCompat"
.end annotation


# static fields
.field public static final METADATA_KEY_ARTWORK:I = 0x64


# instance fields
.field private final mActualMetadataEditor:Ljava/lang/Object;

.field private mApplyMethod:Ljava/lang/reflect/Method;

.field private mClearMethod:Ljava/lang/reflect/Method;

.field private mPutBitmapMethod:Ljava/lang/reflect/Method;

.field private mPutLongMethod:Ljava/lang/reflect/Method;

.field private mPutStringMethod:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;Ljava/lang/Object;)V
    .locals 6

    .line 153
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 155
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Remote Control API\'s exist, should not be given a null MetadataEditor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_0
    invoke-static {}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :try_start_0
    const-string v0, "putString"

    const/4 v1, 0x2

    .line 162
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mPutStringMethod:Ljava/lang/reflect/Method;

    const-string v0, "putBitmap"

    .line 164
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-class v3, Landroid/graphics/Bitmap;

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mPutBitmapMethod:Ljava/lang/reflect/Method;

    const-string v0, "putLong"

    .line 166
    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mPutLongMethod:Ljava/lang/reflect/Method;

    const-string v0, "clear"

    .line 168
    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mClearMethod:Ljava/lang/reflect/Method;

    const-string v0, "apply"

    .line 169
    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mApplyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 171
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 174
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;Ljava/lang/Object;Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$1;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .line 278
    invoke-static {}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mApplyMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 282
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 3

    .line 262
    invoke-static {}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mClearMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 266
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public putBitmap(ILandroid/graphics/Bitmap;)Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;
    .locals 4

    .line 221
    invoke-static {}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mPutBitmapMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 225
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-object p0
.end method

.method public putLong(IJ)Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;
    .locals 4

    .line 247
    invoke-static {}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mPutLongMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-object p0
.end method

.method public putString(ILjava/lang/String;)Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;
    .locals 4

    .line 199
    invoke-static {}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mPutStringMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-object p0
.end method
