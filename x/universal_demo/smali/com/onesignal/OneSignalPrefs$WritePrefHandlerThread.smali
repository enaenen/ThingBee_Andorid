.class public Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;
.super Landroid/os/HandlerThread;
.source "OneSignalPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WritePrefHandlerThread"
.end annotation


# static fields
.field private static final WRITE_CALL_DELAY_TO_BUFFER_MS:I = 0xc8


# instance fields
.field private lastSyncTime:J

.field public mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    const-string v0, "OSH_WritePrefs"

    .line 92
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    .line 93
    invoke-virtual {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->start()V

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->flushBufferToDisk()V

    return-void
.end method

.method private flushBufferToDisk()V
    .locals 7

    .line 120
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    invoke-static {v1}, Lcom/onesignal/OneSignalPrefs;->access$100(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 125
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 126
    sget-object v3, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 127
    monitor-enter v1

    .line 128
    :try_start_0
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 129
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 130
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 131
    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 132
    :cond_2
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    .line 133
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 134
    :cond_3
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 135
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 136
    :cond_4
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_1

    .line 137
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 139
    :cond_5
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 140
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 140
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 144
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    return-void
.end method

.method private getNewRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 110
    new-instance v0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread$1;-><init>(Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;)V

    return-object v0
.end method


# virtual methods
.method startDelayedWrite()V
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 100
    iget-wide v1, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    .line 103
    :cond_0
    iget-wide v1, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->lastSyncTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long v5, v1, v3

    const-wide/16 v1, 0xc8

    add-long v3, v5, v1

    .line 105
    iget-object v1, p0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->getNewRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
