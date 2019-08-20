.class Lcom/onesignal/OneSignalPrefs;
.super Ljava/lang/Object;
.source "OneSignalPrefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;
    }
.end annotation


# static fields
.field static final PREFS_EXISTING_PURCHASES:Ljava/lang/String; = "ExistingPurchases"

.field public static final PREFS_GT_APP_ID:Ljava/lang/String; = "GT_APP_ID"

.field public static final PREFS_GT_DO_NOT_SHOW_MISSING_GPS:Ljava/lang/String; = "GT_DO_NOT_SHOW_MISSING_GPS"

.field public static final PREFS_GT_FIREBASE_TRACKING_ENABLED:Ljava/lang/String; = "GT_FIREBASE_TRACKING_ENABLED"

.field public static final PREFS_GT_PLAYER_ID:Ljava/lang/String; = "GT_PLAYER_ID"

.field public static final PREFS_GT_REGISTRATION_ID:Ljava/lang/String; = "GT_REGISTRATION_ID"

.field public static final PREFS_GT_SOUND_ENABLED:Ljava/lang/String; = "GT_SOUND_ENABLED"

.field public static final PREFS_GT_UNSENT_ACTIVE_TIME:Ljava/lang/String; = "GT_UNSENT_ACTIVE_TIME"

.field public static final PREFS_GT_VIBRATE_ENABLED:Ljava/lang/String; = "GT_VIBRATE_ENABLED"

.field public static final PREFS_ONESIGNAL:Ljava/lang/String;

.field public static final PREFS_ONESIGNAL_ACCEPTED_NOTIFICATION_LAST:Ljava/lang/String; = "ONESIGNAL_ACCEPTED_NOTIFICATION_LAST"

.field public static final PREFS_ONESIGNAL_EMAIL_ADDRESS_LAST:Ljava/lang/String; = "PREFS_ONESIGNAL_EMAIL_ADDRESS_LAST"

.field public static final PREFS_ONESIGNAL_EMAIL_ID_LAST:Ljava/lang/String; = "PREFS_ONESIGNAL_EMAIL_ID_LAST"

.field public static final PREFS_ONESIGNAL_PERMISSION_ACCEPTED_LAST:Ljava/lang/String; = "ONESIGNAL_PERMISSION_ACCEPTED_LAST"

.field public static final PREFS_ONESIGNAL_PLAYER_ID_LAST:Ljava/lang/String; = "ONESIGNAL_PLAYER_ID_LAST"

.field public static final PREFS_ONESIGNAL_PUSH_TOKEN_LAST:Ljava/lang/String; = "ONESIGNAL_PUSH_TOKEN_LAST"

.field public static final PREFS_ONESIGNAL_SUBSCRIPTION:Ljava/lang/String; = "ONESIGNAL_SUBSCRIPTION"

.field public static final PREFS_ONESIGNAL_SUBSCRIPTION_LAST:Ljava/lang/String; = "ONESIGNAL_SUBSCRIPTION_LAST"

.field public static final PREFS_ONESIGNAL_SYNCED_SUBSCRIPTION:Ljava/lang/String; = "ONESIGNAL_SYNCED_SUBSCRIPTION"

.field public static final PREFS_ONESIGNAL_USERSTATE_DEPENDVALYES_:Ljava/lang/String; = "ONESIGNAL_USERSTATE_DEPENDVALYES_"

.field public static final PREFS_ONESIGNAL_USERSTATE_SYNCVALYES_:Ljava/lang/String; = "ONESIGNAL_USERSTATE_SYNCVALYES_"

.field public static final PREFS_ONESIGNAL_USER_PROVIDED_CONSENT:Ljava/lang/String; = "ONESIGNAL_USER_PROVIDED_CONSENT"

.field public static final PREFS_OS_EMAIL_ID:Ljava/lang/String; = "OS_EMAIL_ID"

.field public static final PREFS_OS_ETAG_PREFIX:Ljava/lang/String; = "PREFS_OS_ETAG_PREFIX_"

.field public static final PREFS_OS_FILTER_OTHER_GCM_RECEIVERS:Ljava/lang/String; = "OS_FILTER_OTHER_GCM_RECEIVERS"

.field public static final PREFS_OS_HTTP_CACHE_PREFIX:Ljava/lang/String; = "PREFS_OS_HTTP_CACHE_PREFIX_"

.field public static final PREFS_OS_LAST_LOCATION_TIME:Ljava/lang/String; = "OS_LAST_LOCATION_TIME"

.field public static final PREFS_OS_LAST_SESSION_TIME:Ljava/lang/String; = "OS_LAST_SESSION_TIME"

.field public static final PREFS_OS_RESTORE_TTL_FILTER:Ljava/lang/String; = "OS_RESTORE_TTL_FILTER"

.field public static final PREFS_PLAYER_PURCHASES:Ljava/lang/String; = "GTPlayerPurchases"

.field static final PREFS_PURCHASE_TOKENS:Ljava/lang/String; = "purchaseTokens"

.field public static prefsHandler:Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;

.field static prefsToApply:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/onesignal/OneSignal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/onesignal/OneSignalPrefs;->initializePool()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/onesignal/OneSignalPrefs;->getSharedPrefsByName(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 202
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 204
    monitor-enter v0

    .line 205
    :try_start_0
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    .line 206
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 208
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 209
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 211
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-static {p0}, Lcom/onesignal/OneSignalPrefs;->getSharedPrefsByName(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 215
    const-class v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    check-cast p3, Ljava/lang/String;

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 217
    :cond_2
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 219
    :cond_3
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 221
    :cond_4
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 223
    :cond_5
    const-class p3, Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 224
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0

    :cond_7
    return-object p3

    .line 210
    :cond_8
    :goto_0
    :try_start_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 211
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static getBool(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 189
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/onesignal/OneSignalPrefs;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 193
    const-class v0, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/onesignal/OneSignalPrefs;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 1

    .line 197
    const-class v0, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/onesignal/OneSignalPrefs;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static declared-synchronized getSharedPrefsByName(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3

    const-class v0, Lcom/onesignal/OneSignalPrefs;

    monitor-enter v0

    .line 233
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal.appContext null, could not read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from getSharedPreferences."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 235
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, p0, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 236
    monitor-exit v0

    return-object p0

    .line 239
    :cond_0
    :try_start_1
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 232
    monitor-exit v0

    throw p0
.end method

.method static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 185
    const-class v0, Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lcom/onesignal/OneSignalPrefs;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static initializePool()V
    .locals 3

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    .line 150
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    const-string v1, "GTPlayerPurchases"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v0, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;

    invoke-direct {v0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalPrefs;->prefsHandler:Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;

    return-void
.end method

.method private static save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 177
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->prefsToApply:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-static {}, Lcom/onesignal/OneSignalPrefs;->startDelayedWrite()V

    return-void

    :catchall_0
    move-exception p1

    .line 180
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static saveBool(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 165
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalPrefs;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static saveInt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 169
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalPrefs;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static saveLong(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 173
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalPrefs;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 161
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalPrefs;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static startDelayedWrite()V
    .locals 1

    .line 157
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->prefsHandler:Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;

    invoke-virtual {v0}, Lcom/onesignal/OneSignalPrefs$WritePrefHandlerThread;->startDelayedWrite()V

    return-void
.end method
