.class public Lcom/google/android/gms/internal/measurement/zzgl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzgl$zza;
    }
.end annotation


# static fields
.field private static volatile zzamc:Lcom/google/android/gms/internal/measurement/zzgl;


# instance fields
.field private final zzaeh:J

.field private final zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

.field private final zzame:Lcom/google/android/gms/internal/measurement/zzfr;

.field private final zzamf:Lcom/google/android/gms/internal/measurement/zzfg;

.field private final zzamg:Lcom/google/android/gms/internal/measurement/zzgg;

.field private final zzamh:Lcom/google/android/gms/internal/measurement/zzjk;

.field private final zzami:Lcom/google/android/gms/internal/measurement/zzgf;

.field private final zzamj:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final zzamk:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final zzaml:Lcom/google/android/gms/internal/measurement/zzjv;

.field private final zzamm:Lcom/google/android/gms/internal/measurement/zzfe;

.field private final zzamn:Lcom/google/android/gms/internal/measurement/zzfk;

.field private final zzamo:Lcom/google/android/gms/internal/measurement/zzih;

.field private final zzamp:Lcom/google/android/gms/internal/measurement/zzhm;

.field private final zzamq:Lcom/google/android/gms/internal/measurement/zzdx;

.field private zzamr:Lcom/google/android/gms/internal/measurement/zzei;

.field private zzams:Lcom/google/android/gms/internal/measurement/zzfc;

.field private zzamt:Lcom/google/android/gms/internal/measurement/zzil;

.field private zzamu:Lcom/google/android/gms/internal/measurement/zzeo;

.field private zzamv:Lcom/google/android/gms/internal/measurement/zzfb;

.field private zzamw:Lcom/google/android/gms/internal/measurement/zzfp;

.field private zzamx:Lcom/google/android/gms/internal/measurement/zzjq;

.field private zzamy:Lcom/google/android/gms/internal/measurement/zzee;

.field private zzamz:Lcom/google/android/gms/internal/measurement/zzfx;

.field private zzana:Z

.field private zzanb:Ljava/lang/Boolean;

.field private zzanc:J

.field private zzand:Ljava/nio/channels/FileLock;

.field private zzane:Ljava/nio/channels/FileChannel;

.field private zzanf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzang:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzanh:I

.field private zzani:I

.field private zzanj:J

.field private zzank:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzanl:Z

.field private zzanm:Z

.field private zzann:Z

.field private final zzqs:Landroid/content/Context;

.field private final zzrj:Lcom/google/android/gms/common/util/Clock;

.field private zzvj:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzhl;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzvj:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzhl;->zzqs:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanj:J

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzaeh:J

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzeh;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfr;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzame:Lcom/google/android/gms/internal/measurement/zzfr;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfg;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamf:Lcom/google/android/gms/internal/measurement/zzfg;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjv;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzaml:Lcom/google/android/gms/internal/measurement/zzjv;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfe;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamm:Lcom/google/android/gms/internal/measurement/zzfe;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzdx;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamq:Lcom/google/android/gms/internal/measurement/zzdx;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfk;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamn:Lcom/google/android/gms/internal/measurement/zzfk;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzih;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamo:Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzhm;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamp:Lcom/google/android/gms/internal/measurement/zzhm;

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamj:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamk:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjk;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamh:Lcom/google/android/gms/internal/measurement/zzjk;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzgf;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzami:Lcom/google/android/gms/internal/measurement/zzgf;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamg:Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfu()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzhm;->zzaoi:Lcom/google/android/gms/internal/measurement/zzif;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzif;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/measurement/zzif;-><init>(Lcom/google/android/gms/internal/measurement/zzhm;Lcom/google/android/gms/internal/measurement/zzhn;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzhm;->zzaoi:Lcom/google/android/gms/internal/measurement/zzif;

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzhm;->zzaoi:Lcom/google/android/gms/internal/measurement/zzif;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzhm;->zzaoi:Lcom/google/android/gms/internal/measurement/zzif;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamg:Lcom/google/android/gms/internal/measurement/zzgg;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzgm;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;Lcom/google/android/gms/internal/measurement/zzhl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgg;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgl;Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/measurement/zzec;
    .locals 24

    move-object/from16 v1, p2

    const-string v0, "Unknown"

    const-string v2, "Unknown"

    const-string v3, "Unknown"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "PackageManager is null, can not log app install information"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return-object v5

    :cond_0
    :try_start_0
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    const-string v6, "Error retrieving installer package name. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "manual_install"

    :cond_1
    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_2
    const-string v4, "com.android.vending"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, ""

    goto :goto_1

    :goto_2
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :cond_3
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_4
    const/high16 v0, -0x80000000

    :goto_3
    move-object v3, v2

    new-instance v23, Lcom/google/android/gms/internal/measurement/zzec;

    int-to-long v4, v0

    const-wide/16 v7, 0x30a3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzjv;->zzd(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v14, ""

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v23

    move-object/from16 v2, p3

    move/from16 v12, p4

    move/from16 v20, p5

    move/from16 v21, p6

    invoke-direct/range {v0 .. v22}, Lcom/google/android/gms/internal/measurement/zzec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZ)V

    return-object v23

    :catch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v2, "Error retrieving newly installed package info. appId, appName"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzgl;Lcom/google/android/gms/internal/measurement/zzhl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhl;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzhj;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzhk;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzhl;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzeo;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzeo;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamu:Lcom/google/android/gms/internal/measurement/zzeo;

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzfb;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamv:Lcom/google/android/gms/internal/measurement/zzfb;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzei;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzei;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamr:Lcom/google/android/gms/internal/measurement/zzei;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfc;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzams:Lcom/google/android/gms/internal/measurement/zzfc;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzee;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzee;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamy:Lcom/google/android/gms/internal/measurement/zzee;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzil;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzil;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamt:Lcom/google/android/gms/internal/measurement/zzil;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjq;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzm()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamx:Lcom/google/android/gms/internal/measurement/zzjq;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfp;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamw:Lcom/google/android/gms/internal/measurement/zzfp;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzaml:Lcom/google/android/gms/internal/measurement/zzjv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzkd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzame:Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzkd()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfx;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamz:Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamv:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzkd()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "App measurement is starting up, version"

    const-wide/16 v2, 0x30a3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfb;->zzah()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjv;->zzcc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanh:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzani:I

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string v0, "Not all components initialized"

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanh:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzani:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzvj:Z

    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzeu;)Z
    .locals 13

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzeu;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    const-string v1, "currency"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzer;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecommerce_purchase"

    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzeu;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzer;->zzbc(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    mul-double v3, v3, v5

    const-wide/16 v7, 0x0

    cmpl-double v1, v3, v7

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzeu;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzer;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    mul-double v3, v3, v5

    :cond_0
    const-wide/high16 v5, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_1

    const-wide/high16 v5, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p2

    const-string v0, "Data lost. Currency value is too big. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_2
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzeu;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzer;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Z]{3}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "_ltv_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v9, v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    invoke-virtual {v0, p1, v9}, Lcom/google/android/gms/internal/measurement/zzei;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzju;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Long;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v8, p2, Lcom/google/android/gms/internal/measurement/zzeu;->zzaek:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v10

    add-long v6, v0, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/measurement/zzju;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v0, v2

    goto :goto_5

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzew;->zzahp:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v1, p1, v6}, Lcom/google/android/gms/internal/measurement/zzeh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzex;)I

    move-result v1

    sub-int/2addr v1, v5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzei;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    aput-object p1, v8, v2

    aput-object p1, v8, v5

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v2, "Error pruning currencies. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2, v6, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v8, p2, Lcom/google/android/gms/internal/measurement/zzeu;->zzaek:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/measurement/zzju;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzju;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p2

    const-string v1, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzju;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    invoke-virtual {p2, v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v6

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_6
    return v5
.end method

.method private final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzkn;[Lcom/google/android/gms/internal/measurement/zzki;)[Lcom/google/android/gms/internal/measurement/zzkh;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzft()Lcom/google/android/gms/internal/measurement/zzee;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/measurement/zzee;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzki;[Lcom/google/android/gms/internal/measurement/zzkn;)[Lcom/google/android/gms/internal/measurement/zzkh;

    move-result-object p1

    return-object p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzeb;)V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzah()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->getAppInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzew;->zzagp:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzew;->zzagq:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "config/app/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "app_instance_id"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "platform"

    const-string v3, "android"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gmp_version"

    const-string v3, "12451"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzah()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzgf;->zzbp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzkf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzah()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzgf;->zzbq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v2, "If-Modified-Since"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanl:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjq()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzah()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/measurement/zzgp;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzfo;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzfo;-><init>(Lcom/google/android/gms/internal/measurement/zzfk;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/measurement/zzfm;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzgg;->zzd(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzah()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzbt(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzec;
    .locals 25
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzei;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v15, p0

    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc(Lcom/google/android/gms/internal/measurement/zzeb;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v3, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    new-instance v23, Lcom/google/android/gms/internal/measurement/zzec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgo()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgq()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgr()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->isMeasurementEnabled()Z

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzhe()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzhf()Z

    move-result v21

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzhg()Z

    move-result v22

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v24

    invoke-direct/range {v0 .. v22}, Lcom/google/android/gms/internal/measurement/zzec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZ)V

    return-object v23

    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v3, "No app data available; dropping"

    goto :goto_0
.end method

.method private final zzc(Lcom/google/android/gms/internal/measurement/zzeb;)Ljava/lang/Boolean;
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgo()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzah()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgo()J

    move-result-wide v3

    int-to-long v5, v2

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzah()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzc(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 33
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    iget-object v10, v12, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/measurement/zzjv;->zzd(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzec;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadr:Z

    if-nez v2, :cond_1

    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-virtual {v2, v10, v3}, Lcom/google/android/gms/internal/measurement/zzgf;->zzn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Dropping blacklisted event. appId"

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzjv;->zzce(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzjv;->zzcf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v9, 0x1

    :goto_1
    if-nez v9, :cond_4

    const-string v2, "_err"

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v3

    const/16 v5, 0xb

    const-string v6, "_ev"

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v4, v10

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/measurement/zzei;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgu()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgt()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v4, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzew;->zzahk:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Fetching config for blacklisted app"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb(Lcom/google/android/gms/internal/measurement/zzeb;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfg;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Logging event"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/measurement/zzfe;->zzb(Lcom/google/android/gms/internal/measurement/zzeu;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->beginTransaction()V

    :try_start_0
    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;

    const-string v2, "_iap"

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "ecommerce_purchase"

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-direct {v11, v10, v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzeu;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    return-void

    :cond_9
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzjv;->zzbv(Ljava/lang/String;)Z

    move-result v24

    const-string v2, "_err"

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjv()J

    move-result-wide v16

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v10

    move/from16 v20, v24

    move/from16 v22, v2

    invoke-virtual/range {v15 .. v23}, Lcom/google/android/gms/internal/measurement/zzei;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/measurement/zzej;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/gms/internal/measurement/zzej;->zzafd:J

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzew;->zzagv:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v6, v7

    sub-long v15, v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v15, v6

    const-wide/16 v17, 0x3e8

    const-wide/16 v8, 0x1

    if-lez v4, :cond_b

    rem-long v15, v15, v17

    cmp-long v1, v15, v8

    if-nez v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Data loss. Too many events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v3, Lcom/google/android/gms/internal/measurement/zzej;->zzafd:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    return-void

    :cond_b
    if-eqz v24, :cond_d

    :try_start_2
    iget-wide v4, v3, Lcom/google/android/gms/internal/measurement/zzej;->zzafc:J

    sget-object v15, Lcom/google/android/gms/internal/measurement/zzew;->zzagx:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v8, v15

    sub-long v15, v4, v8

    cmp-long v4, v15, v6

    if-lez v4, :cond_d

    rem-long v15, v15, v17

    const-wide/16 v4, 0x1

    cmp-long v2, v15, v4

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v3, Lcom/google/android/gms/internal/measurement/zzej;->zzafc:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v3

    const/16 v5, 0x10

    const-string v6, "_ev"

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v4, v10

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    return-void

    :cond_d
    if-eqz v2, :cond_f

    :try_start_3
    iget-wide v4, v3, Lcom/google/android/gms/internal/measurement/zzej;->zzaff:J

    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    iget-object v8, v12, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/measurement/zzew;->zzagw:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzeh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzex;)I

    move-result v2

    const v8, 0xf4240

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v8, 0x0

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v8, v2

    sub-long v15, v4, v8

    cmp-long v2, v15, v6

    if-lez v2, :cond_f

    const-wide/16 v4, 0x1

    cmp-long v1, v15, v4

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Too many error events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v3, Lcom/google/android/gms/internal/measurement/zzej;->zzaff:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    return-void

    :cond_f
    :try_start_4
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzer;->zzif()Landroid/os/Bundle;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    const-string v3, "_o"

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzaek:Ljava/lang/String;

    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzjv;->zzcc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    const-string v3, "_dbg"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v15, v3, v8}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    const-string v3, "_r"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzei;->zzay(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    const-string v5, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v8, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v8, Lcom/google/android/gms/internal/measurement/zzep;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzaek:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    iget-wide v1, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzafz:J

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v1

    move-object v1, v8

    move-object v2, v11

    move-object v4, v10

    move-wide/from16 v30, v13

    const/4 v9, 0x2

    move-wide v13, v6

    move-wide/from16 v6, v18

    move-object v13, v8

    const/4 v14, 0x1

    const/16 v29, 0x0

    move-wide/from16 v8, v16

    move-object v14, v10

    move-object v10, v15

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/measurement/zzep;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    iget-object v2, v13, Lcom/google/android/gms/internal/measurement/zzep;->name:Ljava/lang/String;

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/measurement/zzei;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v1

    if-nez v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/measurement/zzei;->zzbb(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-ltz v5, :cond_12

    if-eqz v24, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v4

    iget-object v5, v13, Lcom/google/android/gms/internal/measurement/zzep;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v14

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    return-void

    :cond_12
    :try_start_5
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzeq;

    iget-object v2, v13, Lcom/google/android/gms/internal/measurement/zzep;->name:Ljava/lang/String;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    iget-wide v3, v13, Lcom/google/android/gms/internal/measurement/zzep;->timestamp:J

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v15, v1

    move-object/from16 v16, v14

    move-object/from16 v17, v2

    move-wide/from16 v22, v3

    invoke-direct/range {v15 .. v28}, Lcom/google/android/gms/internal/measurement/zzeq;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_13
    iget-wide v2, v1, Lcom/google/android/gms/internal/measurement/zzeq;->zzafr:J

    invoke-virtual {v13, v11, v2, v3}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzgl;J)Lcom/google/android/gms/internal/measurement/zzep;

    move-result-object v8

    iget-wide v2, v8, Lcom/google/android/gms/internal/measurement/zzep;->timestamp:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzeq;->zzac(J)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v1

    move-object v13, v8

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzeq;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v13, Lcom/google/android/gms/internal/measurement/zzep;->zztd:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v13, Lcom/google/android/gms/internal/measurement/zzep;->zztd:Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzkl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzkl;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzatc:Ljava/lang/Integer;

    const-string v3, "android"

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzatk:Ljava/lang/String;

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzado:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzado:Ljava/lang/String;

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/zzec;->zztc:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zztc:Ljava/lang/String;

    iget-wide v3, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadn:J

    const-wide/32 v5, -0x80000000

    cmp-long v7, v3, v5

    const/4 v3, 0x0

    if-nez v7, :cond_14

    move-object v4, v3

    goto :goto_3

    :cond_14
    iget-wide v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadn:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_3
    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzatw:Ljava/lang/Integer;

    iget-wide v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzato:Ljava/lang/Long;

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadh:Ljava/lang/String;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzadh:Ljava/lang/String;

    iget-wide v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadq:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_15

    move-object v4, v3

    goto :goto_4

    :cond_15
    iget-wide v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadq:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_4
    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzats:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v4

    iget-object v5, v12, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfr;->zzbj(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_16

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    iget-boolean v5, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadt:Z

    if-eqz v5, :cond_19

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzatq:Ljava/lang/String;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzatr:Ljava/lang/Boolean;

    goto :goto_6

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfw()Lcom/google/android/gms/internal/measurement/zzeo;

    move-result-object v4

    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzeo;->zzf(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_19

    iget-boolean v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadu:Z

    if-eqz v4, :cond_19

    iget-object v4, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    const-string v5, "null secure ID. appId"

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "null"

    goto :goto_5

    :cond_17
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "empty secure ID. appId"

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    :goto_5
    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzatz:Ljava/lang/String;

    :cond_19
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfw()Lcom/google/android/gms/internal/measurement/zzeo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzatm:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfw()Lcom/google/android/gms/internal/measurement/zzeo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzatl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfw()Lcom/google/android/gms/internal/measurement/zzeo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzeo;->zzic()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzatn:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfw()Lcom/google/android/gms/internal/measurement/zzeo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzeo;->zzid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzafl:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzatp:Ljava/lang/Long;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzatf:Ljava/lang/Long;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzatg:Ljava/lang/Long;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzath:Ljava/lang/Long;

    iget-wide v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzads:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzaub:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhm()Z

    move-result v4

    if-eqz v4, :cond_1a

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzauc:Ljava/lang/String;

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v3

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzei;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v3

    if-nez v3, :cond_1b

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzeb;

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-direct {v3, v11, v4}, Lcom/google/android/gms/internal/measurement/zzeb;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfb;->zzih()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzeb;->zzal(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadj:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzeb;->zzao(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadh:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzeb;->zzam(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v4

    iget-object v5, v12, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfr;->zzbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzeb;->zzan(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzr(J)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzm(J)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzn(J)V

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zztc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzeb;->setAppVersion(Ljava/lang/String;)V

    iget-wide v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadn:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzo(J)V

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzado:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzeb;->zzap(Ljava/lang/String;)V

    iget-wide v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadp:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzp(J)V

    iget-wide v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadq:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzq(J)V

    iget-boolean v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzadr:Z

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzeb;->setMeasurementEnabled(Z)V

    iget-wide v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->zzads:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzaa(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzeb;)V

    :cond_1b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzeb;->getAppInstanceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzadg:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzadj:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v3

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzei;->zzaw(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzkn;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    const/4 v4, 0x0

    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1c

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/zzkn;-><init>()V

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    aput-object v5, v6, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzju;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/zzkn;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzju;

    iget-wide v6, v6, Lcom/google/android/gms/internal/measurement/zzju;->zzaqu:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/zzkn;->zzaui:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_1c
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzkl;)J

    move-result-wide v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    iget-object v5, v13, Lcom/google/android/gms/internal/measurement/zzep;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    if-eqz v5, :cond_1f

    iget-object v5, v13, Lcom/google/android/gms/internal/measurement/zzep;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzer;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "_r"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_8

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v5

    iget-object v6, v13, Lcom/google/android/gms/internal/measurement/zzep;->zztd:Ljava/lang/String;

    iget-object v7, v13, Lcom/google/android/gms/internal/measurement/zzep;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjv()J

    move-result-wide v15

    iget-object v6, v13, Lcom/google/android/gms/internal/measurement/zzep;->zztd:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v6

    invoke-virtual/range {v14 .. v22}, Lcom/google/android/gms/internal/measurement/zzei;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/measurement/zzej;

    move-result-object v6

    if-eqz v5, :cond_1f

    iget-wide v5, v6, Lcom/google/android/gms/internal/measurement/zzej;->zzafg:J

    iget-object v7, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    iget-object v8, v13, Lcom/google/android/gms/internal/measurement/zzep;->zztd:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzeh;->zzar(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_1f

    goto :goto_8

    :cond_1f
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v1, v13, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzep;JZ)Z

    move-result v1

    if-eqz v1, :cond_20

    const-wide/16 v1, 0x0

    iput-wide v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzank:J

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    const-string v4, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfg;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Event recorded"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/measurement/zzfe;->zza(Lcom/google/android/gms/internal/measurement/zzep;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjy()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Background event processing time, ms"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v5, v3, v30

    const-wide/32 v3, 0x7a120

    add-long v7, v5, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    throw v1
.end method

.method private final zzd(Ljava/lang/String;J)Z
    .locals 59
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->beginTransaction()V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/measurement/zzgl$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;Lcom/google/android/gms/internal/measurement/zzgm;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v4

    iget-wide v5, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzanj:J

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzei;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v12, :cond_3

    cmp-long v12, v5, v7

    if-eqz v12, :cond_0

    :try_start_2
    new-array v12, v9, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v11
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v6, v3

    goto/16 :goto_3c

    :catch_0
    move-exception v0

    move-object v6, v3

    move-object v12, v6

    :goto_0
    move-object v3, v0

    goto/16 :goto_c

    :cond_0
    :try_start_3
    new-array v12, v11, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :goto_1
    cmp-long v13, v5, v7

    if-eqz v13, :cond_1

    :try_start_4
    const-string v13, "rowid <= ? and "
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_1
    :try_start_5
    const-string v13, ""

    :goto_2
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit16 v14, v14, 0x94

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v12, :cond_2

    if-eqz v3, :cond_d

    :goto_3
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_d

    :cond_2
    :try_start_8
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v22, v3

    move-object v3, v12

    move-object/from16 v21, v13

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v6, v3

    goto :goto_0

    :cond_3
    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    :try_start_a
    new-array v3, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v3, v10

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v11

    goto :goto_4

    :cond_4
    new-array v3, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v3, v10

    :goto_4
    cmp-long v12, v5, v7

    if-eqz v12, :cond_5

    const-string v12, " and rowid <= ?"

    goto :goto_5

    :cond_5
    const-string v12, ""

    :goto_5
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x54

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " order by rowid limit 1;"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-nez v12, :cond_6

    if-eqz v3, :cond_d

    goto :goto_3

    :cond_6
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v22, v3

    move-object/from16 v21, v13

    const/4 v3, 0x0

    :goto_6
    :try_start_c
    const-string v13, "raw_events_metadata"

    new-array v14, v11, [Ljava/lang/String;

    const-string v12, "metadata"

    aput-object v12, v14, v10

    const-string v16, "app_id = ? and metadata_fingerprint = ?"

    new-array v12, v9, [Ljava/lang/String;

    aput-object v3, v12, v10

    aput-object v21, v12, v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    const-string v20, "2"

    move-object/from16 v23, v12

    move-object v12, v15

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v23

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-nez v12, :cond_7

    :try_start_e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "Raw event metadata record is missing. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v15, :cond_d

    :try_start_f
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v6, v15

    goto/16 :goto_3c

    :catch_2
    move-exception v0

    move-object v12, v3

    move-object v6, v15

    goto/16 :goto_0

    :cond_7
    :try_start_10
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    array-length v13, v12

    invoke-static {v12, v10, v13}, Lcom/google/android/gms/internal/measurement/zzaba;->zza([BII)Lcom/google/android/gms/internal/measurement/zzaba;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/internal/measurement/zzkl;

    invoke-direct {v13}, Lcom/google/android/gms/internal/measurement/zzkl;-><init>()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/measurement/zzabj;->zzb(Lcom/google/android/gms/internal/measurement/zzaba;)Lcom/google/android/gms/internal/measurement/zzabj;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v12, :cond_8

    :try_start_13
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v12

    const-string v14, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v12, v14, v9}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_8
    :try_start_14
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    invoke-interface {v2, v13}, Lcom/google/android/gms/internal/measurement/zzek;->zzb(Lcom/google/android/gms/internal/measurement/zzkl;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    cmp-long v9, v5, v7

    const/4 v14, 0x3

    if-eqz v9, :cond_9

    :try_start_15
    const-string v9, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    new-array v12, v14, [Ljava/lang/String;

    aput-object v3, v12, v10

    aput-object v21, v12, v11

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v12, v6
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-object v5, v9

    move-object/from16 v16, v12

    goto :goto_7

    :cond_9
    :try_start_16
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/String;

    aput-object v3, v9, v10

    aput-object v21, v9, v11

    move-object/from16 v16, v9

    :goto_7
    const-string v13, "raw_events"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string v9, "rowid"

    aput-object v9, v6, v10

    const-string v9, "name"

    aput-object v9, v6, v11

    const-string v9, "timestamp"

    const/4 v12, 0x2

    aput-object v9, v6, v12

    const-string v9, "data"

    aput-object v9, v6, v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    const/16 v20, 0x0

    move-object/from16 v12, v24

    const/4 v9, 0x3

    move-object v14, v6

    move-object v6, v15

    move-object v15, v5

    :try_start_17
    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :try_start_18
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v6

    const-string v9, "Raw event data disappeared while in transaction. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v9, v12}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    if-eqz v5, :cond_d

    :goto_8
    :try_start_19
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    goto/16 :goto_d

    :cond_a
    :goto_9
    :try_start_1a
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    array-length v14, v6

    invoke-static {v6, v10, v14}, Lcom/google/android/gms/internal/measurement/zzaba;->zza([BII)Lcom/google/android/gms/internal/measurement/zzaba;

    move-result-object v6

    new-instance v14, Lcom/google/android/gms/internal/measurement/zzki;

    invoke-direct {v14}, Lcom/google/android/gms/internal/measurement/zzki;-><init>()V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    :try_start_1b
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzabj;->zzb(Lcom/google/android/gms/internal/measurement/zzaba;)Lcom/google/android/gms/internal/measurement/zzabj;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :try_start_1c
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v14, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasw:Ljava/lang/Long;

    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/measurement/zzek;->zza(JLcom/google/android/gms/internal/measurement/zzki;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v5, :cond_d

    goto :goto_8

    :catch_3
    move-exception v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v6

    const-string v7, "Data loss. Failed to merge raw event. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    if-nez v6, :cond_c

    if-eqz v5, :cond_d

    goto :goto_8

    :cond_c
    const-wide/16 v7, -0x1

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v6, v5

    goto/16 :goto_3c

    :catch_4
    move-exception v0

    move-object v12, v3

    move-object v6, v5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v6, v15

    :try_start_1d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v7, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    if-eqz v6, :cond_d

    :goto_a
    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v6, v15

    goto/16 :goto_3b

    :catch_7
    move-exception v0

    move-object v6, v15

    :goto_b
    move-object v12, v3

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v22

    goto/16 :goto_3c

    :catch_8
    move-exception v0

    move-object v12, v3

    move-object/from16 v6, v22

    goto/16 :goto_0

    :catch_9
    move-exception v0

    move-object v6, v3

    const/4 v12, 0x0

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    goto/16 :goto_3c

    :catch_a
    move-exception v0

    move-object v3, v0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_c
    :try_start_1f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    const-string v5, "Data loss. Error selecting raw event. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v7, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    if-eqz v6, :cond_d

    goto :goto_a

    :cond_d
    :goto_d
    :try_start_20
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzanu:Ljava/util/List;

    if-eqz v3, :cond_f

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzanu:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    :cond_f
    :goto_e
    const/4 v3, 0x1

    :goto_f
    if-nez v3, :cond_5e

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzanu:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzki;

    iput-object v4, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzeh;->zzau(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    :goto_10
    iget-object v14, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzanu:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_2b

    iget-object v14, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzanu:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v15

    iget-object v11, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-virtual {v15, v11, v5}, Lcom/google/android/gms/internal/measurement/zzgf;->zzn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "Dropping blacklisted raw event. appId"

    iget-object v11, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v15

    iget-object v10, v14, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v11, v10}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzjv;->zzce(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzjv;->zzcf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_11

    :cond_10
    const/4 v5, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v5, 0x1

    :goto_12
    if-nez v5, :cond_12

    const-string v5, "_err"

    iget-object v6, v14, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v15

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    const/16 v17, 0xb

    const-string v18, "_ev"

    iget-object v6, v14, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_12
    move/from16 v28, v7

    goto/16 :goto_20

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    iget-object v10, v14, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v10}, Lcom/google/android/gms/internal/measurement/zzgf;->zzo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    iget-object v6, v14, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzjv;->zzcg(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_13

    :cond_14
    move/from16 v28, v7

    goto/16 :goto_1b

    :cond_15
    :goto_13
    iget-object v6, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    if-nez v6, :cond_16

    const/4 v6, 0x0

    new-array v10, v6, [Lcom/google/android/gms/internal/measurement/zzkj;

    iput-object v10, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    :cond_16
    iget-object v6, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    array-length v10, v6

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_14
    if-ge v11, v10, :cond_19

    move/from16 v25, v10

    aget-object v10, v6, v11

    move-object/from16 v26, v6

    const-string v6, "_c"

    move/from16 v27, v8

    iget-object v8, v10, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    move/from16 v28, v7

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v10, Lcom/google/android/gms/internal/measurement/zzkj;->zzasz:Ljava/lang/Long;

    const/4 v15, 0x1

    goto :goto_15

    :cond_17
    move/from16 v28, v7

    const-string v6, "_r"

    iget-object v7, v10, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v10, Lcom/google/android/gms/internal/measurement/zzkj;->zzasz:Ljava/lang/Long;

    const/16 v16, 0x1

    :cond_18
    :goto_15
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v25

    move-object/from16 v6, v26

    move/from16 v8, v27

    move/from16 v7, v28

    goto :goto_14

    :cond_19
    move/from16 v28, v7

    move/from16 v27, v8

    if-nez v15, :cond_1a

    if-eqz v5, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v6

    const-string v7, "Marking event as conversion"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v8

    iget-object v10, v14, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    iget-object v7, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/measurement/zzkj;

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzkj;

    invoke-direct {v7}, Lcom/google/android/gms/internal/measurement/zzkj;-><init>()V

    const-string v8, "_c"

    iput-object v8, v7, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/gms/internal/measurement/zzkj;->zzasz:Ljava/lang/Long;

    array-length v8, v6

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    aput-object v7, v6, v8

    iput-object v6, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    :cond_1a
    if-nez v16, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v6

    const-string v7, "Marking event as real-time"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v8

    iget-object v10, v14, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    iget-object v7, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/measurement/zzkj;

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzkj;

    invoke-direct {v7}, Lcom/google/android/gms/internal/measurement/zzkj;-><init>()V

    const-string v8, "_r"

    iput-object v8, v7, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/gms/internal/measurement/zzkj;->zzasz:Ljava/lang/Long;

    array-length v8, v6

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    aput-object v7, v6, v8

    iput-object v6, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v29

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjv()J

    move-result-wide v30

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    move-object/from16 v32, v6

    invoke-virtual/range {v29 .. v37}, Lcom/google/android/gms/internal/measurement/zzei;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/measurement/zzej;

    move-result-object v6

    iget-wide v6, v6, Lcom/google/android/gms/internal/measurement/zzej;->zzafg:J

    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    iget-object v10, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzeh;->zzar(Ljava/lang/String;)I

    move-result v8

    int-to-long v10, v8

    cmp-long v8, v6, v10

    if-lez v8, :cond_20

    const/4 v6, 0x0

    :goto_16
    iget-object v7, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    array-length v7, v7

    if-ge v6, v7, :cond_1f

    const-string v7, "_r"

    iget-object v8, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    iget-object v7, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    new-array v7, v7, [Lcom/google/android/gms/internal/measurement/zzkj;

    if-lez v6, :cond_1c

    iget-object v8, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    const/4 v10, 0x0

    invoke-static {v8, v10, v7, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c
    array-length v8, v7

    if-ge v6, v8, :cond_1d

    iget-object v8, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    add-int/lit8 v10, v6, 0x1

    array-length v11, v7

    sub-int/2addr v11, v6

    invoke-static {v8, v10, v7, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    iput-object v7, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    goto :goto_17

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_1f
    :goto_17
    move/from16 v8, v27

    goto :goto_18

    :cond_20
    const/4 v8, 0x1

    :goto_18
    iget-object v6, v14, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzjv;->zzbv(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    if-eqz v5, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v29

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjv()J

    move-result-wide v30

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v32, v5

    invoke-virtual/range {v29 .. v37}, Lcom/google/android/gms/internal/measurement/zzei;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/measurement/zzej;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/gms/internal/measurement/zzej;->zzafe:J

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    iget-object v10, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzew;->zzagy:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/internal/measurement/zzeh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzex;)I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v5, v10

    if-lez v7, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "Too many conversions. Not logging as conversion. appId"

    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_19
    if-ge v7, v6, :cond_23

    aget-object v15, v5, v7

    move-object/from16 v38, v5

    const-string v5, "_c"

    move/from16 v39, v6

    iget-object v6, v15, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    move-object v11, v15

    goto :goto_1a

    :cond_21
    const-string v5, "_err"

    iget-object v6, v15, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v10, 0x1

    :cond_22
    :goto_1a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v38

    move/from16 v6, v39

    goto :goto_19

    :cond_23
    if-eqz v10, :cond_24

    if-eqz v11, :cond_24

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/google/android/gms/internal/measurement/zzkj;

    const/4 v6, 0x0

    aput-object v11, v7, v6

    invoke-static {v5, v7}, Lcom/google/android/gms/common/util/ArrayUtils;->removeAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/internal/measurement/zzkj;

    iput-object v5, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    goto :goto_1b

    :cond_24
    if-eqz v11, :cond_25

    const-string v5, "_err"

    iput-object v5, v11, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v11, Lcom/google/android/gms/internal/measurement/zzkj;->zzasz:Ljava/lang/Long;

    goto :goto_1b

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "Did not find conversion parameter. appId"

    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_26
    :goto_1b
    if-eqz v4, :cond_2a

    const-string v5, "_e"

    iget-object v6, v14, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    if-eqz v5, :cond_29

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    array-length v5, v5

    if-nez v5, :cond_27

    goto :goto_1d

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    const-string v5, "_et"

    invoke-static {v14, v5}, Lcom/google/android/gms/internal/measurement/zzjv;->zzb(Lcom/google/android/gms/internal/measurement/zzki;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "Engagement event does not include duration. appId"

    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    :goto_1c
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1e

    :cond_28
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x0

    add-long v10, v12, v5

    goto :goto_1f

    :cond_29
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "Engagement event does not contain any parameters. appId"

    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1c

    :cond_2a
    :goto_1e
    move-wide v10, v12

    :goto_1f
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    add-int/lit8 v6, v9, 0x1

    aput-object v14, v5, v9

    move v9, v6

    move-wide v12, v10

    :goto_20
    add-int/lit8 v7, v28, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_10

    :cond_2b
    move/from16 v27, v8

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzanu:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v9, v5, :cond_2c

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/internal/measurement/zzki;

    iput-object v5, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    :cond_2c
    if-eqz v4, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    const-string v6, "_lte"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzei;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzju;

    move-result-object v4

    if-eqz v4, :cond_2e

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    if-nez v5, :cond_2d

    goto :goto_21

    :cond_2d
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v15, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    const-string v16, "auto"

    const-string v17, "_lte"

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v18

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v4, 0x0

    add-long v8, v6, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object v14, v5

    invoke-direct/range {v14 .. v20}, Lcom/google/android/gms/internal/measurement/zzju;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v4, v5

    goto :goto_22

    :cond_2e
    :goto_21
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    const-string v30, "auto"

    const-string v31, "_lte"

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v32

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-direct/range {v28 .. v34}, Lcom/google/android/gms/internal/measurement/zzju;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_22
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/zzkn;-><init>()V

    const-string v6, "_lte"

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/zzkn;->name:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/zzkn;->zzaui:Ljava/lang/Long;

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/zzkn;->zzasz:Ljava/lang/Long;

    const/4 v6, 0x0

    :goto_23
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    array-length v7, v7

    if-ge v6, v7, :cond_30

    const-string v7, "_lte"

    iget-object v8, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzkn;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    aput-object v5, v7, v6

    const/4 v6, 0x1

    goto :goto_24

    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_30
    const/4 v6, 0x0

    :goto_24
    if-nez v6, :cond_31

    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/measurement/zzkn;

    iput-object v6, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aput-object v5, v6, v7

    :cond_31
    const-wide/16 v5, 0x0

    cmp-long v7, v12, v5

    if-lez v7, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzju;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "Updated lifetime engagement user property with value. Value"

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_32
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzkn;[Lcom/google/android/gms/internal/measurement/zzki;)[Lcom/google/android/gms/internal/measurement/zzkh;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzatv:[Lcom/google/android/gms/internal/measurement/zzkh;

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzew;->zzagk:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v4

    const-string v7, "measurement.event_sampling_enabled"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/measurement/zzgf;->zzm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    array-length v5, v5

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzjv;->zzku()Ljava/security/SecureRandom;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_25
    if-ge v9, v8, :cond_4b

    aget-object v11, v7, v9

    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    const-string v13, "_ep"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    const-string v12, "_en"

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/measurement/zzjv;->zzb(Lcom/google/android/gms/internal/measurement/zzki;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzeq;

    if-nez v13, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v14, v14, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Lcom/google/android/gms/internal/measurement/zzei;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v13

    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    iget-object v12, v13, Lcom/google/android/gms/internal/measurement/zzeq;->zzaft:Ljava/lang/Long;

    if-nez v12, :cond_36

    iget-object v12, v13, Lcom/google/android/gms/internal/measurement/zzeq;->zzafu:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    cmp-long v12, v14, v16

    if-lez v12, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    const-string v14, "_sr"

    iget-object v15, v13, Lcom/google/android/gms/internal/measurement/zzeq;->zzafu:Ljava/lang/Long;

    invoke-static {v12, v14, v15}, Lcom/google/android/gms/internal/measurement/zzjv;->zza([Lcom/google/android/gms/internal/measurement/zzkj;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    :cond_34
    iget-object v12, v13, Lcom/google/android/gms/internal/measurement/zzeq;->zzafv:Ljava/lang/Boolean;

    if-eqz v12, :cond_35

    iget-object v12, v13, Lcom/google/android/gms/internal/measurement/zzeq;->zzafv:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    const-string v13, "_efs"

    move-object/from16 v40, v7

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v12, v13, v7}, Lcom/google/android/gms/internal/measurement/zzjv;->zza([Lcom/google/android/gms/internal/measurement/zzkj;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v7

    iput-object v7, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    goto :goto_26

    :cond_35
    move-object/from16 v40, v7

    :goto_26
    add-int/lit8 v7, v10, 0x1

    aput-object v11, v5, v10

    move-object/from16 v57, v2

    move-object/from16 v58, v3

    move-object/from16 v56, v6

    move v10, v7

    :goto_27
    move/from16 v41, v8

    goto/16 :goto_2d

    :cond_36
    move-object/from16 v40, v7

    move-object/from16 v57, v2

    move-object/from16 v58, v3

    move-object/from16 v56, v6

    goto :goto_27

    :cond_37
    move-object/from16 v40, v7

    const-string v7, "_dbg"

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3d

    if-nez v14, :cond_38

    goto :goto_29

    :cond_38
    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    array-length v13, v12

    const/4 v15, 0x0

    :goto_28
    if-ge v15, v13, :cond_3d

    move/from16 v41, v8

    aget-object v8, v12, v15

    move-object/from16 v42, v12

    iget-object v12, v8, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3c

    instance-of v7, v14, Ljava/lang/Long;

    if-eqz v7, :cond_39

    iget-object v7, v8, Lcom/google/android/gms/internal/measurement/zzkj;->zzasz:Ljava/lang/Long;

    invoke-virtual {v14, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    :cond_39
    instance-of v7, v14, Ljava/lang/String;

    if-eqz v7, :cond_3a

    iget-object v7, v8, Lcom/google/android/gms/internal/measurement/zzkj;->zzajf:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    :cond_3a
    instance-of v7, v14, Ljava/lang/Double;

    if-eqz v7, :cond_3e

    iget-object v7, v8, Lcom/google/android/gms/internal/measurement/zzkj;->zzaqx:Ljava/lang/Double;

    invoke-virtual {v14, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    :cond_3b
    const/4 v7, 0x1

    goto :goto_2a

    :cond_3c
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v41

    move-object/from16 v12, v42

    goto :goto_28

    :cond_3d
    :goto_29
    move/from16 v41, v8

    :cond_3e
    const/4 v7, 0x0

    :goto_2a
    if-nez v7, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v12}, Lcom/google/android/gms/internal/measurement/zzgf;->zzp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_2b

    :cond_3f
    const/4 v7, 0x1

    :goto_2b
    if-gtz v7, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v8

    const-string v12, "Sample rate must be positive. event, rate"

    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v12, v13, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v7, v10, 0x1

    aput-object v11, v5, v10

    :cond_40
    :goto_2c
    move-object/from16 v57, v2

    move-object/from16 v58, v3

    move-object/from16 v56, v6

    move v10, v7

    :goto_2d
    const-wide/16 v14, 0x1

    goto/16 :goto_2f

    :cond_41
    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzeq;

    if-nez v8, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lcom/google/android/gms/internal/measurement/zzei;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v8

    if-nez v8, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v8

    const-string v12, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v13, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    iget-object v14, v11, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-virtual {v8, v12, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzeq;

    iget-object v12, v2, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    const-wide/16 v45, 0x1

    const-wide/16 v47, 0x1

    iget-object v14, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasw:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v49

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v42, v8

    move-object/from16 v43, v12

    move-object/from16 v44, v13

    invoke-direct/range {v42 .. v55}, Lcom/google/android/gms/internal/measurement/zzeq;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    const-string v12, "_eid"

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/measurement/zzjv;->zzb(Lcom/google/android/gms/internal/measurement/zzki;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_43

    const/4 v13, 0x1

    goto :goto_2e

    :cond_43
    const/4 v13, 0x0

    :goto_2e
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x1

    if-ne v7, v14, :cond_45

    add-int/lit8 v7, v10, 0x1

    aput-object v11, v5, v10

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_40

    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzeq;->zzaft:Ljava/lang/Long;

    if-nez v10, :cond_44

    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzeq;->zzafu:Ljava/lang/Long;

    if-nez v10, :cond_44

    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzeq;->zzafv:Ljava/lang/Boolean;

    if-eqz v10, :cond_40

    :cond_44
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v10, v10}, Lcom/google/android/gms/internal/measurement/zzeq;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v8

    iget-object v10, v11, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    invoke-interface {v4, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_45
    invoke-virtual {v6, v7}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v14

    if-nez v14, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    const-string v14, "_sr"

    move-object/from16 v56, v6

    int-to-long v6, v7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v12, v14, v15}, Lcom/google/android/gms/internal/measurement/zzjv;->zza([Lcom/google/android/gms/internal/measurement/zzkj;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    add-int/lit8 v12, v10, 0x1

    aput-object v11, v5, v10

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_46

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v8, v7, v6, v7}, Lcom/google/android/gms/internal/measurement/zzeq;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v8

    :cond_46
    iget-object v6, v11, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    iget-object v7, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasw:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/measurement/zzeq;->zzad(J)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v57, v2

    move-object/from16 v58, v3

    move v10, v12

    goto/16 :goto_2d

    :cond_47
    move-object/from16 v56, v6

    iget-wide v14, v8, Lcom/google/android/gms/internal/measurement/zzeq;->zzafs:J

    iget-object v6, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasw:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const/4 v6, 0x0

    move-object/from16 v57, v2

    move-object/from16 v58, v3

    sub-long v2, v16, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v14, 0x5265c00

    cmp-long v6, v2, v14

    if-ltz v6, :cond_49

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    const-string v3, "_efs"

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/measurement/zzjv;->zza([Lcom/google/android/gms/internal/measurement/zzkj;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    const-string v3, "_sr"

    int-to-long v6, v7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v2, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjv;->zza([Lcom/google/android/gms/internal/measurement/zzkj;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    add-int/lit8 v2, v10, 0x1

    aput-object v11, v5, v10

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual {v8, v6, v3, v7}, Lcom/google/android/gms/internal/measurement/zzeq;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v8

    :cond_48
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    iget-object v6, v11, Lcom/google/android/gms/internal/measurement/zzki;->zzasw:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzeq;->zzad(J)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v6

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v2

    goto :goto_2f

    :cond_49
    const-wide/16 v14, 0x1

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v8, v12, v3, v3}, Lcom/google/android/gms/internal/measurement/zzeq;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    :goto_2f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v40

    move/from16 v8, v41

    move-object/from16 v6, v56

    move-object/from16 v2, v57

    move-object/from16 v3, v58

    goto/16 :goto_25

    :cond_4b
    move-object/from16 v57, v2

    move-object v2, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    array-length v3, v3

    if-ge v10, v3, :cond_4c

    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/measurement/zzki;

    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    :cond_4c
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzeq;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzeq;)V

    goto :goto_30

    :cond_4d
    move-object/from16 v57, v2

    move-object v2, v3

    :cond_4e
    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzatg:Ljava/lang/Long;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzath:Ljava/lang/Long;

    const/4 v3, 0x0

    :goto_31
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    array-length v4, v4

    if-ge v3, v4, :cond_51

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzki;->zzasw:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzatg:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_4f

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzki;->zzasw:Ljava/lang/Long;

    iput-object v5, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzatg:Ljava/lang/Long;

    :cond_4f
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzki;->zzasw:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzath:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_50

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzki;->zzasw:Ljava/lang/Long;

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzath:Ljava/lang/Long;

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_51
    move-object/from16 v3, v57

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzei;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v5

    if-nez v5, :cond_52

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_35

    :cond_52
    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    array-length v6, v6

    if-lez v6, :cond_56

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgn()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_53

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_32

    :cond_53
    const/4 v8, 0x0

    :goto_32
    iput-object v8, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzatj:Ljava/lang/Long;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgm()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_54

    goto :goto_33

    :cond_54
    move-wide v6, v8

    :goto_33
    cmp-long v8, v6, v10

    if-eqz v8, :cond_55

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_34

    :cond_55
    const/4 v6, 0x0

    :goto_34
    iput-object v6, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzati:Ljava/lang/Long;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgv()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgs()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzatt:Ljava/lang/Integer;

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzatg:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzeb;->zzm(J)V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzath:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzeb;->zzn(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzhd()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzaef:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzeb;)V

    :cond_56
    :goto_35
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    array-length v5, v5

    if-lez v5, :cond_5a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzgf;->zzbp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzkf;

    move-result-object v5

    if-eqz v5, :cond_58

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zzask:Ljava/lang/Long;

    if-nez v6, :cond_57

    goto :goto_37

    :cond_57
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zzask:Ljava/lang/Long;

    :goto_36
    iput-object v5, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zzaua:Ljava/lang/Long;

    goto :goto_38

    :cond_58
    :goto_37
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzkl;->zzadh:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_59

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_36

    :cond_59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "Did not find measurement config or missing version info. appId"

    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzans:Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v5

    move/from16 v10, v27

    invoke-virtual {v5, v2, v10}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzkl;Z)Z

    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgl$zza;->zzant:Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_39
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5c

    if-eqz v6, :cond_5b

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_5c
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_5d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v6, "Deleted fewer rows from raw events table than expected"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v5, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    :try_start_21
    const-string v5, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_b
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    goto :goto_3a

    :catch_b
    move-exception v0

    move-object v3, v0

    :try_start_22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v5, "Failed to remove unused event metadata. appId"

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    const/4 v2, 0x1

    return v2

    :cond_5e
    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    const/4 v2, 0x0

    return v2

    :catchall_6
    move-exception v0

    :goto_3b
    move-object v2, v0

    :goto_3c
    if-eqz v6, :cond_5f

    :try_start_24
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5f
    throw v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    throw v2
.end method

.method static zzfq()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzgl;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamc:Lcom/google/android/gms/internal/measurement/zzgl;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/zzgl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzamc:Lcom/google/android/gms/internal/measurement/zzgl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzhl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzhl;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>(Lcom/google/android/gms/internal/measurement/zzhl;)V

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamc:Lcom/google/android/gms/internal/measurement/zzgl;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamc:Lcom/google/android/gms/internal/measurement/zzgl;

    return-object p0
.end method

.method private final zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzei;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeb;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/measurement/zzeb;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfb;->zzih()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzeb;->zzal(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzan(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzan(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfb;->zzih()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzal(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadh:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadh:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzam(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadj:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadj:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzao(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_3
    iget-wide v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadp:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadp:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgq()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadp:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzeb;->zzp(J)V

    const/4 v1, 0x1

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zztc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zztc:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzec;->zztc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeb;->setAppVersion(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_5
    iget-wide v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadn:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgo()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_6

    iget-wide v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadn:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzeb;->zzo(J)V

    const/4 v1, 0x1

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzado:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzado:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzado:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzap(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_7
    iget-wide v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadq:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgr()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_8

    iget-wide v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadq:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzeb;->zzq(J)V

    const/4 v1, 0x1

    :cond_8
    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadr:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->isMeasurementEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_9

    iget-boolean v1, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadr:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeb;->setMeasurementEnabled(Z)V

    const/4 v1, 0x1

    :cond_9
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzaef:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzaef:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzhc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzaef:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzaq(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_a
    iget-wide v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzads:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzhe()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_b

    iget-wide v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzads:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzeb;->zzaa(J)V

    const/4 v1, 0x1

    :cond_b
    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadt:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzhf()Z

    move-result v4

    if-eq v3, v4, :cond_c

    iget-boolean v1, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadt:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzd(Z)V

    const/4 v1, 0x1

    :cond_c
    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadu:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zzhg()Z

    move-result v4

    if-eq v3, v4, :cond_d

    iget-boolean p1, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadu:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzeb;->zze(Z)V

    const/4 v1, 0x1

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzeb;)V

    :cond_e
    return-object v0
.end method

.method private final zzjr()Lcom/google/android/gms/internal/measurement/zzfp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamw:Lcom/google/android/gms/internal/measurement/zzfp;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamw:Lcom/google/android/gms/internal/measurement/zzfp;

    return-object v0
.end method

.method private final zzjs()Lcom/google/android/gms/internal/measurement/zzjq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamx:Lcom/google/android/gms/internal/measurement/zzjq;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamx:Lcom/google/android/gms/internal/measurement/zzjq;

    return-object v0
.end method

.method private final zzjt()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    const-string v0, "google_app_measurement.db"

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzane:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzane:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzand:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzand:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private final zzjv()J
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzfr;->zzajx:Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfu;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide/16 v3, 0x1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjv;->zzku()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long v7, v5, v3

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzfr;->zzajx:Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfu;->set(J)V

    move-wide v3, v7

    :cond_0
    const/4 v2, 0x0

    add-long v5, v0, v3

    const-wide/16 v0, 0x3e8

    div-long/2addr v5, v0

    const-wide/16 v0, 0x3c

    div-long/2addr v5, v0

    div-long/2addr v5, v0

    const-wide/16 v0, 0x18

    div-long/2addr v5, v0

    return-wide v5
.end method

.method private final zzjx()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzei;->zzhs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzei;->zzhn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzjy()V
    .locals 20
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzkb()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-wide v1, v0, Lcom/google/android/gms/internal/measurement/zzgl;->zzank:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    iget-wide v7, v0, Lcom/google/android/gms/internal/measurement/zzgl;->zzank:J

    sub-long v9, v1, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long v7, v5, v1

    cmp-long v1, v7, v3

    if-lez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjr()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfp;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjs()Lcom/google/android/gms/internal/measurement/zzjq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjq;->cancel()V

    return-void

    :cond_1
    iput-wide v3, v0, Lcom/google/android/gms/internal/measurement/zzgl;->zzank:J

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjk()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjx()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzew;->zzahl:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzei;->zzht()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzei;->zzho()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_7

    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, ".none."

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/google/android/gms/internal/measurement/zzew;->zzahg:Lcom/google/android/gms/internal/measurement/zzex;

    goto :goto_2

    :cond_6
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzew;->zzahf:Lcom/google/android/gms/internal/measurement/zzex;

    goto :goto_2

    :cond_7
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzew;->zzahe:Lcom/google/android/gms/internal/measurement/zzex;

    :goto_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/zzfr;->zzajt:Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfu;->get()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/zzfr;->zzaju:Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfu;->get()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v15

    move-wide/from16 v16, v9

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzei;->zzhq()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v10

    move-wide/from16 v18, v5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzei;->zzhr()J

    move-result-wide v5

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v8, v5, v3

    if-nez v8, :cond_9

    :cond_8
    move-wide v5, v3

    goto/16 :goto_4

    :cond_9
    const/4 v8, 0x0

    sub-long v8, v5, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v8, v1, v5

    sub-long v5, v11, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v10, v1, v5

    sub-long v5, v13, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v12, v1, v5

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long v5, v8, v18

    if-eqz v7, :cond_a

    cmp-long v7, v1, v3

    if-lez v7, :cond_a

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    add-long v10, v5, v16

    move-wide v5, v10

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v7

    move-wide/from16 v10, v16

    invoke-virtual {v7, v1, v2, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(JJ)Z

    move-result v7

    if-nez v7, :cond_b

    add-long v5, v1, v10

    :cond_b
    cmp-long v1, v12, v3

    if-eqz v1, :cond_d

    cmp-long v1, v12, v8

    if-ltz v1, :cond_d

    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x14

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzew;->zzahn:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_8

    const-wide/16 v9, 0x1

    shl-long/2addr v9, v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzew;->zzahm:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    mul-long v14, v14, v9

    add-long v9, v5, v14

    cmp-long v2, v9, v12

    if-lez v2, :cond_c

    move-wide v5, v9

    goto :goto_4

    :cond_c
    add-int/lit8 v1, v1, 0x1

    move-wide v5, v9

    goto :goto_3

    :cond_d
    :goto_4
    cmp-long v1, v5, v3

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjr()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfp;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjs()Lcom/google/android/gms/internal/measurement/zzjq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjq;->cancel()V

    return-void

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjq()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfk;->zzew()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjr()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfp;->zzet()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjs()Lcom/google/android/gms/internal/measurement/zzjq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjq;->cancel()V

    return-void

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzfr;->zzajv:Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfu;->get()J

    move-result-wide v1

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzew;->zzahc:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(JJ)Z

    move-result v9

    if-nez v9, :cond_10

    add-long v9, v1, v7

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjr()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfp;->unregister()V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long v7, v5, v1

    cmp-long v1, v7, v3

    if-gtz v1, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzew;->zzahh:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzfr;->zzajt:Lcom/google/android/gms/internal/measurement/zzfu;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfu;->set(J)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjs()Lcom/google/android/gms/internal/measurement/zzjq;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzjq;->zzh(J)V

    return-void

    :cond_12
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjr()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfp;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjs()Lcom/google/android/gms/internal/measurement/zzjq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjq;->cancel()V

    return-void
.end method

.method private final zzkb()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzana:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzkc()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanl:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanm:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzann:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzang:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzang:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzang:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Not stopping services. fetch, network, upload"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanl:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanm:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzann:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    return-object v0
.end method

.method public final isEnabled()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhi()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzeh;->zzas(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->isMeasurementExplicitlyDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzg(Z)Z

    move-result v0

    return v0
.end method

.method protected final start()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzei;->zzhp()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzajt:Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfu;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzajt:Lcom/google/android/gms/internal/measurement/zzfu;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfu;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzajy:Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfu;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Persisting first open"

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzaeh:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzajy:Lcom/google/android/gms/internal/measurement/zzfu;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzaeh:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfu;->set(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjk()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjv;->zzx(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjv;->zzx(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgb;->zza(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjf;->zza(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfb;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfr;->zziv()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfb;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzbl(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfb;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfr;->zziy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamt:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzil;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamt:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzil;->zzdf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfb;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzbl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzajy:Lcom/google/android/gms/internal/measurement/zzfu;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzaeh:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfu;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzaka:Lcom/google/android/gms/internal/measurement/zzfw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfw;->zzbn(Ljava/lang/String;)V

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfu()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzfr;->zzaka:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfw;->zzjc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhm;->zzbm(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfb;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzjb()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhi()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzh(Z)V

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfb;->zzah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzeh;->zzav(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfu()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhm;->zzkj()V

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfx()Lcom/google/android/gms/internal/measurement/zzil;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzil;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_c
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjy()V

    return-void
.end method

.method protected final zza(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, v0, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanf:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanf:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_5

    :cond_1
    if-nez p2, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzfr;->zzajt:Lcom/google/android/gms/internal/measurement/zzfu;

    iget-object p4, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfu;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzfr;->zzaju:Lcom/google/android/gms/internal/measurement/zzfu;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfu;->set(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjy()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p2

    const-string p4, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzei;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzei;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    new-array p4, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v1, "queue"

    const-string v2, "rowid=?"

    invoke-virtual {p2, v1, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-eq p2, v3, :cond_2

    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string p2, "Deleted fewer rows from queue than expected"

    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception p1

    :try_start_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p2

    const-string p3, "Failed to delete a bundle in a queue table"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjq()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfk;->zzew()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjx()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjw()V

    goto :goto_1

    :cond_4
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanj:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjy()V

    :goto_1
    iput-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzank:J

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    throw p1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzank:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide p3, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzank:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p3

    const-string v2, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v2, v4, p2}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzfr;->zzaju:Lcom/google/android/gms/internal/measurement/zzfu;

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfu;->set(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_7

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfr;->zzajv:Lcom/google/android/gms/internal/measurement/zzfu;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzfu;->set(J)V

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzew;->zzaia:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {p1, p4, p2}, Lcom/google/android/gms/internal/measurement/zzeh;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzex;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzei;->zzc(Ljava/util/List;)V

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjy()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanm:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzkc()V

    return-void

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanm:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzkc()V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzeu;Ljava/lang/String;)[B
    .locals 32
    .param p1    # Lcom/google/android/gms/internal/measurement/zzeu;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfq()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzkk;

    invoke-direct {v8}, Lcom/google/android/gms/internal/measurement/zzkk;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzei;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v6, 0x0

    if-nez v9, :cond_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Log and bundle not available. package_name"

    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-array v1, v6, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v5, v11

    goto/16 :goto_f

    :cond_0
    :try_start_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeb;->isMeasurementEnabled()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v2, :cond_1

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Log and bundle disabled. package_name"

    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_4
    const-string v2, "_iap"

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v2, :cond_2

    :try_start_5
    const-string v2, "ecommerce_purchase"

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_3

    :cond_2
    :try_start_6
    invoke-direct {v11, v10, v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzeu;)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v2, :cond_3

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Failed to handle purchase event at single event bundle creation. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_3
    :try_start_8
    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzeh;->zzau(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_7

    :try_start_9
    const-string v7, "_e"

    iget-object v12, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    if-eqz v7, :cond_6

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzer;->size()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    const-string v12, "_et"

    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/measurement/zzer;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v7

    const-string v12, "The engagement event does not include duration. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    :goto_1
    invoke-virtual {v7, v12, v13}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    const-string v7, "_et"

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/zzer;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v7

    const-string v12, "The engagement event does not contain any parameters. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :cond_7
    :goto_3
    :try_start_a
    new-instance v7, Lcom/google/android/gms/internal/measurement/zzkl;

    invoke-direct {v7}, Lcom/google/android/gms/internal/measurement/zzkl;-><init>()V

    const/4 v13, 0x1

    new-array v12, v13, [Lcom/google/android/gms/internal/measurement/zzkl;

    aput-object v7, v12, v6

    iput-object v12, v8, Lcom/google/android/gms/internal/measurement/zzkk;->zzata:[Lcom/google/android/gms/internal/measurement/zzkl;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatc:Ljava/lang/Integer;

    const-string v12, "android"

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatk:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeb;->zzah()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgp()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzado:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeb;->zzag()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zztc:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgo()J

    move-result-wide v14

    const-wide/32 v16, -0x80000000

    cmp-long v12, v14, v16

    const/4 v13, 0x0

    if-nez v12, :cond_8

    move-object v12, v13

    goto :goto_4

    :cond_8
    long-to-int v12, v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_4
    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatw:Ljava/lang/Integer;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgq()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzato:Ljava/lang/Long;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeb;->getGmpAppId()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzadh:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgr()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzats:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->isEnabled()Z

    move-result v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v12, :cond_9

    :try_start_b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhm()Z

    move-result v12

    if-eqz v12, :cond_9

    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    iget-object v14, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/measurement/zzeh;->zzat(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    iput-object v13, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzauc:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_9
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeb;->zzah()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/measurement/zzfr;->zzbj(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeb;->zzhf()Z

    move-result v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v14, :cond_a

    if-eqz v12, :cond_a

    :try_start_d
    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iput-object v14, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatq:Ljava/lang/String;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatr:Ljava/lang/Boolean;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_a
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfw()Lcom/google/android/gms/internal/measurement/zzeo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatm:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfw()Lcom/google/android/gms/internal/measurement/zzeo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfw()Lcom/google/android/gms/internal/measurement/zzeo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzeo;->zzic()J

    move-result-wide v14

    long-to-int v12, v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatn:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfw()Lcom/google/android/gms/internal/measurement/zzeo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzeo;->zzid()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzafl:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeb;->getAppInstanceId()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzadg:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgl()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzadj:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzeb;->zzah()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/measurement/zzei;->zzaw(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Lcom/google/android/gms/internal/measurement/zzkn;

    iput-object v14, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v2, :cond_e

    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v14

    iget-object v15, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    const-string v6, "_lte"

    invoke-virtual {v14, v15, v6}, Lcom/google/android/gms/internal/measurement/zzei;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzju;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v14, v6, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    if-nez v14, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v16, v14, v4

    if-lez v16, :cond_c

    new-instance v14, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v15, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    const-string v19, "auto"

    const-string v20, "_lte"

    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v13}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v21

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const/4 v6, 0x0

    add-long v4, v16, v23

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/internal/measurement/zzju;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_6

    :cond_c
    move-object v14, v6

    goto :goto_6

    :cond_d
    :goto_5
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v15, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    const-string v16, "auto"

    const-string v17, "_lte"

    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v18

    move-object v14, v4

    move-object/from16 v20, v3

    invoke-direct/range {v14 .. v20}, Lcom/google/android/gms/internal/measurement/zzju;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object v14, v4

    goto :goto_6

    :cond_e
    const/4 v14, 0x0

    :goto_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    :try_start_10
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-ge v4, v6, :cond_10

    :try_start_11
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/zzkn;-><init>()V

    iget-object v13, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    aput-object v6, v13, v4

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/zzju;->name:Ljava/lang/String;

    iput-object v13, v6, Lcom/google/android/gms/internal/measurement/zzkn;->name:Ljava/lang/String;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzju;

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    iget-wide v8, v13, Lcom/google/android/gms/internal/measurement/zzju;->zzaqu:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v6, Lcom/google/android/gms/internal/measurement/zzkn;->zzaui:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v8

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    invoke-virtual {v8, v6, v9}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/Object;)V

    if-eqz v2, :cond_f

    const-string v8, "_lte"

    iget-object v9, v6, Lcom/google/android/gms/internal/measurement/zzkn;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v5, v14, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    iput-object v5, v6, Lcom/google/android/gms/internal/measurement/zzkn;->zzasz:Ljava/lang/Long;

    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v6, Lcom/google/android/gms/internal/measurement/zzkn;->zzaui:Ljava/lang/Long;

    move-object v5, v6

    :cond_f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    goto :goto_7

    :cond_10
    move-object/from16 v27, v8

    move-object/from16 v28, v9

    if-eqz v2, :cond_11

    if-nez v5, :cond_11

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzkn;-><init>()V

    const-string v4, "_lte"

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzkn;->name:Ljava/lang/String;

    iget-object v4, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzkn;->zzaui:Ljava/lang/Long;

    iget-object v4, v14, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzkn;->zzasz:Ljava/lang/Long;

    iget-object v4, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    iget-object v5, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    array-length v5, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/measurement/zzkn;

    iput-object v4, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    iget-object v4, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    iget-object v5, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aput-object v2, v4, v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_8

    :cond_11
    const/4 v6, 0x1

    :goto_8
    :try_start_12
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const-wide/16 v4, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_12

    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzju;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_12
    :try_start_14
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzer;->zzif()Landroid/os/Bundle;

    move-result-object v8

    const-string v2, "_iap"

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    const-wide/16 v12, 0x1

    if-eqz v2, :cond_13

    :try_start_15
    const-string v2, "_c"

    invoke-virtual {v8, v2, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Marking in-app purchase as real-time"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    const-string v2, "_r"

    invoke-virtual {v8, v2, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :cond_13
    :try_start_16
    const-string v2, "_o"

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzaek:Ljava/lang/String;

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzjv;->zzcc(Ljava/lang/String;)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v2, :cond_14

    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    const-string v3, "_dbg"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v3, v9}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    const-string v3, "_r"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v3, v9}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :cond_14
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-virtual {v2, v10, v3}, Lcom/google/android/gms/internal/measurement/zzei;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-nez v2, :cond_15

    :try_start_19
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzeq;

    iget-object v14, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    const-wide/16 v15, 0x1

    const-wide/16 v17, 0x0

    iget-wide v12, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzafz:J

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-wide/from16 v19, v12

    move-object v12, v2

    const/4 v9, 0x1

    const/16 v26, 0x0

    move-object v13, v10

    invoke-direct/range {v12 .. v25}, Lcom/google/android/gms/internal/measurement/zzeq;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzeq;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-wide v12, v4

    goto :goto_9

    :cond_15
    const/4 v9, 0x1

    const/16 v26, 0x0

    :try_start_1a
    iget-wide v12, v2, Lcom/google/android/gms/internal/measurement/zzeq;->zzafr:J

    iget-wide v14, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzafz:J

    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/measurement/zzeq;->zzac(J)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeq;->zzie()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzeq;)V

    :goto_9
    new-instance v14, Lcom/google/android/gms/internal/measurement/zzep;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzaek:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    iget-wide v1, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzafz:J
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    move-wide v15, v1

    move-object v1, v14

    move-object v2, v11

    move-wide/from16 v17, v4

    move-object v4, v10

    move-object v5, v6

    move-object v11, v7

    move-object/from16 v29, v14

    const/4 v14, 0x0

    move-wide v6, v15

    move-object/from16 v16, v8

    move-object/from16 v15, v27

    move-object/from16 v30, v28

    const/4 v14, 0x1

    move-wide v8, v12

    move-object/from16 v10, v16

    :try_start_1b
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/measurement/zzep;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzki;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzki;-><init>()V

    new-array v2, v14, [Lcom/google/android/gms/internal/measurement/zzki;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iput-object v2, v11, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    move-object/from16 v2, v29

    iget-wide v3, v2, Lcom/google/android/gms/internal/measurement/zzep;->timestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzki;->zzasw:Ljava/lang/Long;

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzep;->name:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzki;->name:Ljava/lang/String;

    iget-wide v3, v2, Lcom/google/android/gms/internal/measurement/zzep;->zzafn:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzki;->zzasx:Ljava/lang/Long;

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzep;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzer;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzkj;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzep;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzkj;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/zzkj;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzki;->zzasv:[Lcom/google/android/gms/internal/measurement/zzkj;

    add-int/lit8 v8, v4, 0x1

    aput-object v6, v7, v4

    iput-object v5, v6, Lcom/google/android/gms/internal/measurement/zzkj;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzep;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    move-object v7, v11

    move-object/from16 v5, p0

    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v9

    invoke-virtual {v9, v6, v4}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Lcom/google/android/gms/internal/measurement/zzkj;Ljava/lang/Object;)V

    move-object v11, v7

    move v4, v8

    goto :goto_a

    :cond_16
    move-object v7, v11

    move-object/from16 v2, v30

    move-object/from16 v5, p0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzah()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzate:[Lcom/google/android/gms/internal/measurement/zzkn;

    iget-object v6, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatd:[Lcom/google/android/gms/internal/measurement/zzki;

    invoke-direct {v5, v3, v4, v6}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzkn;[Lcom/google/android/gms/internal/measurement/zzki;)[Lcom/google/android/gms/internal/measurement/zzkh;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatv:[Lcom/google/android/gms/internal/measurement/zzkh;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzki;->zzasw:Ljava/lang/Long;

    iput-object v3, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatg:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzki;->zzasw:Ljava/lang/Long;

    iput-object v1, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzath:Ljava/lang/Long;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgn()J

    move-result-wide v3

    cmp-long v1, v3, v17

    if-eqz v1, :cond_17

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_b

    :cond_17
    move-object/from16 v13, v26

    :goto_b
    iput-object v13, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatj:Ljava/lang/Long;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgm()J

    move-result-wide v8

    cmp-long v1, v8, v17

    if-nez v1, :cond_18

    goto :goto_c

    :cond_18
    move-wide v3, v8

    :goto_c
    cmp-long v1, v3, v17

    if-eqz v1, :cond_19

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_d

    :cond_19
    move-object/from16 v13, v26

    :goto_d
    iput-object v13, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzati:Ljava/lang/Long;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgv()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgs()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatt:Ljava/lang/Integer;

    const-wide/16 v3, 0x30a3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatp:Ljava/lang/Long;

    iget-object v1, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatf:Ljava/lang/Long;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatu:Ljava/lang/Boolean;

    iget-object v1, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzatg:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzeb;->zzm(J)V

    iget-object v1, v7, Lcom/google/android/gms/internal/measurement/zzkl;->zzath:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzeb;->zzn(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzeb;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    :try_start_1d
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzabj;->zzwg()I

    move-result v1

    new-array v1, v1, [B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzabb;->zzb([BII)Lcom/google/android/gms/internal/measurement/zzabb;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/measurement/zzabj;->zza(Lcom/google/android/gms/internal/measurement/zzabb;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzabb;->zzvy()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzjv;->zza([B)[B

    move-result-object v1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v26

    :catchall_1
    move-exception v0

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v5, v11

    :goto_e
    move-object v1, v0

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    throw v1
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzef;Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzaek:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzec;->zzadh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/measurement/zzec;->zzadr:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzef;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzef;-><init>(Lcom/google/android/gms/internal/measurement/zzef;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaen:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzei;->zzh(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzef;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzef;->zzaek:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaek:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaek:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzef;->zzaek:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/measurement/zzef;->zzaen:Z

    if-eqz v3, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzef;->zzaek:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaek:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/internal/measurement/zzef;->zzaem:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaem:J

    iget-wide v2, v1, Lcom/google/android/gms/internal/measurement/zzef;->zzaeq:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaeq:J

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzef;->zzaeo:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaeo:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzef;->zzaer:Lcom/google/android/gms/internal/measurement/zzeu;

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaer:Lcom/google/android/gms/internal/measurement/zzeu;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/measurement/zzef;->zzaen:Z

    iput-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaen:Z

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-wide v5, v3, Lcom/google/android/gms/internal/measurement/zzjs;->zzaqu:J

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjs;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/zzjs;->zzaek:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzjs;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaeo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaem:J

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjs;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/zzjs;->zzaek:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzjs;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaen:Z

    const/4 p1, 0x1

    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaen:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaek:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/zzjs;->zzaqu:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjs;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzju;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzju;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/measurement/zzju;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/measurement/zzju;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaer:Lcom/google/android/gms/internal/measurement/zzeu;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzeu;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaer:Lcom/google/android/gms/internal/measurement/zzeu;

    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaem:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Lcom/google/android/gms/internal/measurement/zzeu;J)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzec;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzef;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjs;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjs;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    throw p1
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 18
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    iget-wide v12, v2, Lcom/google/android/gms/internal/measurement/zzeu;->zzafz:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/measurement/zzjv;->zzd(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzec;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-boolean v5, v3, Lcom/google/android/gms/internal/measurement/zzec;->zzadr:Z

    if-nez v5, :cond_1

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzei;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    const-wide/16 v6, 0x0

    cmp-long v8, v12, v6

    const/4 v9, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-gez v8, :cond_2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v8, "Invalid time querying timed out conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v8, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :cond_2
    const-string v8, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v10, v9, [Ljava/lang/String;

    aput-object v4, v10, v14

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v15

    invoke-virtual {v5, v8, v10}, Lcom/google/android/gms/internal/measurement/zzei;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzef;

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v10

    const-string v11, "User property timed out"

    iget-object v15, v8, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v14

    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v14, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzjs;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v11, v15, v9, v14}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzaep:Lcom/google/android/gms/internal/measurement/zzeu;

    if-eqz v9, :cond_4

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzeu;

    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzaep:Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-direct {v9, v10, v12, v13}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Lcom/google/android/gms/internal/measurement/zzeu;J)V

    invoke-direct {v1, v9, v3}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzec;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v9, v4, v8}, Lcom/google/android/gms/internal/measurement/zzei;->zzi(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    cmp-long v8, v12, v6

    if-gez v8, :cond_6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v8, "Invalid time querying expired conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :cond_6
    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v10, v9

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v10, v11

    invoke-virtual {v5, v8, v10}, Lcom/google/android/gms/internal/measurement/zzei;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzef;

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v10

    const-string v11, "User property expired"

    iget-object v14, v9, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v15

    iget-object v6, v9, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v9, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzjs;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v10, v11, v14, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v6

    iget-object v7, v9, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/internal/measurement/zzei;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v9, Lcom/google/android/gms/internal/measurement/zzef;->zzaet:Lcom/google/android/gms/internal/measurement/zzeu;

    if-eqz v6, :cond_8

    iget-object v6, v9, Lcom/google/android/gms/internal/measurement/zzef;->zzaet:Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v6

    iget-object v7, v9, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/internal/measurement/zzei;->zzi(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    goto :goto_3

    :cond_9
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_a

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzeu;

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-direct {v9, v7, v12, v13}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Lcom/google/android/gms/internal/measurement/zzeu;J)V

    invoke-direct {v1, v9, v3}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzec;)V

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    const-wide/16 v7, 0x0

    cmp-long v9, v12, v7

    if-gez v9, :cond_b

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v7

    const-string v8, "Invalid time querying triggered conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v8, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v14, 0x0

    goto :goto_5

    :cond_b
    const-string v7, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v8, v14

    const/4 v4, 0x1

    aput-object v6, v8, v4

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v8, v6

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/zzei;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_5
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzef;

    if-eqz v11, :cond_c

    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v6, v11, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v7, v11, Lcom/google/android/gms/internal/measurement/zzef;->zzaek:Ljava/lang/String;

    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjs;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object v5, v9

    move-object v14, v9

    move-wide v9, v12

    move-object/from16 v17, v4

    move-object v4, v11

    move-object/from16 v11, v16

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/measurement/zzju;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzju;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "User property triggered"

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v8

    iget-object v9, v14, Lcom/google/android/gms/internal/measurement/zzju;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v14, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    :goto_7
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "Too many active user properties, ignoring"

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v8

    iget-object v9, v14, Lcom/google/android/gms/internal/measurement/zzju;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v14, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    goto :goto_7

    :goto_8
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzef;->zzaer:Lcom/google/android/gms/internal/measurement/zzeu;

    if-eqz v5, :cond_e

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzef;->zzaer:Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-direct {v5, v14}, Lcom/google/android/gms/internal/measurement/zzjs;-><init>(Lcom/google/android/gms/internal/measurement/zzju;)V

    iput-object v5, v4, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/internal/measurement/zzef;->zzaen:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzef;)Z

    move-object/from16 v4, v17

    const/4 v14, 0x0

    goto/16 :goto_6

    :cond_f
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzec;)V

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_10

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzeu;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-direct {v6, v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Lcom/google/android/gms/internal/measurement/zzeu;J)V

    invoke-direct {v1, v6, v3}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzec;)V

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    throw v2
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzeu;Ljava/lang/String;)V
    .locals 27
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzei;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc(Lcom/google/android/gms/internal/measurement/zzeb;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "_ui"

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    const-string v5, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    new-instance v15, Lcom/google/android/gms/internal/measurement/zzec;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgo()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgq()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgr()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->isMeasurementEnabled()Z

    move-result v14

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgl()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzhe()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzhf()Z

    move-result v23

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zzhg()Z

    move-result v24

    const/16 v25, 0x0

    move-object v2, v15

    move-object/from16 v26, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    invoke-direct/range {v2 .. v24}, Lcom/google/android/gms/internal/measurement/zzec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZ)V

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzec;)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzhk;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanh:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanh:I

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzjs;Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzec;->zzadh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/measurement/zzec;->zzadr:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjv;->zzby(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    const-string v5, "_ev"

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjs;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzjv;->zzi(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjs;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v6

    iget-object v7, p2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    const-string v9, "_ev"

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjs;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjv;->zzj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/internal/measurement/zzjs;->zzaek:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/internal/measurement/zzjs;->zzaqu:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/measurement/zzju;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string v2, "Setting user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzju;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzei;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzju;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string p2, "User property set"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzju;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzju;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzju;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    throw p1
.end method

.method final zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzei;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzei;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    const/16 v4, 0x130

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v4, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzt(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzeb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/measurement/zzgf;->zzbr(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfr;->zzaju:Lcom/google/android/gms/internal/measurement/zzfu;

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/measurement/zzfu;->set(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfr;->zzajv:Lcom/google/android/gms/internal/measurement/zzfu;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzfu;->set(J)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjy()V

    goto/16 :goto_9

    :cond_8
    :goto_3
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_4

    :cond_9
    move-object p5, p3

    :goto_4
    if-eqz p5, :cond_a

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object p5, p3

    :goto_5
    if-eq p2, v5, :cond_c

    if-ne p2, v4, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/internal/measurement/zzgf;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p3, :cond_d

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanl:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzkc()V

    return-void

    :cond_c
    :goto_7
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/measurement/zzgf;->zzbp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzkf;

    move-result-object p5

    if-nez p5, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/internal/measurement/zzgf;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p3, :cond_d

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :cond_d
    :try_start_5
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzeb;->zzs(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzeb;)V

    if-ne p2, v5, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzio()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjq()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfk;->zzew()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjx()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjw()V

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanl:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzkc()V

    throw p1
.end method

.method public final zzbt()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method final zzc(Lcom/google/android/gms/internal/measurement/zzef;Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzec;->zzadh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/measurement/zzec;->zzadr:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzei;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzei;->zzh(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzef;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzei;->zzi(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaen:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzei;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzaet:Lcom/google/android/gms/internal/measurement/zzeu;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzaet:Lcom/google/android/gms/internal/measurement/zzeu;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzeu;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    if-eqz v2, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzaet:Lcom/google/android/gms/internal/measurement/zzeu;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzeu;->zzafo:Lcom/google/android/gms/internal/measurement/zzer;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzer;->zzif()Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    move-object v2, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzaet:Lcom/google/android/gms/internal/measurement/zzeu;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzeu;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzef;->zzaek:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzaet:Lcom/google/android/gms/internal/measurement/zzeu;

    iget-wide v5, p1, Lcom/google/android/gms/internal/measurement/zzeu;->zzafz:J

    const/4 p1, 0x1

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-wide v4, v5

    move v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/measurement/zzeu;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzec;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzef;->zzael:Lcom/google/android/gms/internal/measurement/zzjs;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    throw p1
.end method

.method final zzc(Lcom/google/android/gms/internal/measurement/zzjs;Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/zzec;->zzadh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/measurement/zzec;->zzadr:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Removing user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzei;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/measurement/zzei;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p2

    const-string v0, "User property removed"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzjs;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    throw p1
.end method

.method final zzch()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzvj:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 11
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzei;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v5, "apps"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    const-string v4, "events"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "user_attributes"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "conditional_properties"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "raw_events"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "raw_events_metadata"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "queue"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "audience_filter_values"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const-string v4, "main_event_params"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v5, v2

    if-lez v5, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    iget-object v6, p1, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadh:Ljava/lang/String;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadr:Z

    iget-boolean v9, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadt:Z

    iget-boolean v10, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadu:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzeh;->zzav(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/measurement/zzec;->zzadr:Z

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzg(Lcom/google/android/gms/internal/measurement/zzec;)V

    :cond_2
    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/measurement/zzef;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzbt(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb(Lcom/google/android/gms/internal/measurement/zzef;Lcom/google/android/gms/internal/measurement/zzec;)V

    :cond_0
    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/measurement/zzef;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzbt(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc(Lcom/google/android/gms/internal/measurement/zzef;Lcom/google/android/gms/internal/measurement/zzec;)V

    :cond_0
    return-void
.end method

.method final zze(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzang:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzang:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzang:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/measurement/zzec;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzgn;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;Lcom/google/android/gms/internal/measurement/zzec;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgg;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Failed to get app instance id. appId"

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzfs()Lcom/google/android/gms/internal/measurement/zzdx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamq:Lcom/google/android/gms/internal/measurement/zzdx;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamq:Lcom/google/android/gms/internal/measurement/zzdx;

    return-object v0
.end method

.method public final zzft()Lcom/google/android/gms/internal/measurement/zzee;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamy:Lcom/google/android/gms/internal/measurement/zzee;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamy:Lcom/google/android/gms/internal/measurement/zzee;

    return-object v0
.end method

.method public final zzfu()Lcom/google/android/gms/internal/measurement/zzhm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamp:Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamp:Lcom/google/android/gms/internal/measurement/zzhm;

    return-object v0
.end method

.method public final zzfv()Lcom/google/android/gms/internal/measurement/zzfb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamv:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamv:Lcom/google/android/gms/internal/measurement/zzfb;

    return-object v0
.end method

.method public final zzfw()Lcom/google/android/gms/internal/measurement/zzeo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamu:Lcom/google/android/gms/internal/measurement/zzeo;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamu:Lcom/google/android/gms/internal/measurement/zzeo;

    return-object v0
.end method

.method public final zzfx()Lcom/google/android/gms/internal/measurement/zzil;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamt:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamt:Lcom/google/android/gms/internal/measurement/zzil;

    return-object v0
.end method

.method public final zzfy()Lcom/google/android/gms/internal/measurement/zzih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamo:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamo:Lcom/google/android/gms/internal/measurement/zzih;

    return-object v0
.end method

.method public final zzfz()Lcom/google/android/gms/internal/measurement/zzfc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzams:Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzams:Lcom/google/android/gms/internal/measurement/zzfc;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 20
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzec;->zzadh:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzei;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzeb;->getGmpAppId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzec;->zzadh:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zzs(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzeb;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v3

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzgf;->zzbs(Ljava/lang/String;)V

    :cond_1
    iget-boolean v3, v2, Lcom/google/android/gms/internal/measurement/zzec;->zzadr:Z

    if-nez v3, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;

    return-void

    :cond_2
    iget-wide v6, v2, Lcom/google/android/gms/internal/measurement/zzec;->zzaeh:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    :cond_3
    iget v3, v2, Lcom/google/android/gms/internal/measurement/zzec;->zzaei:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v8

    const-string v9, "Incorrect app type, assuming installed app. appId, appType"

    iget-object v10, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v9, v10, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzei;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzei;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v8

    const/16 v16, 0x0

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzeb;->getGmpAppId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzeb;->getGmpAppId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/internal/measurement/zzec;->zzadh:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v9

    const-string v10, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzeb;->zzah()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzeb;->zzah()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzei;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-array v11, v15, [Ljava/lang/String;

    aput-object v8, v11, v14

    const-string v12, "events"

    const-string v13, "app_id=?"

    invoke-virtual {v10, v12, v13, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v14

    const-string v13, "user_attributes"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "conditional_properties"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "apps"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "raw_events"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "raw_events_metadata"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "event_filters"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "property_filters"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "audience_filter_values"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v12, v10

    if-lez v12, :cond_5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v10

    const-string v11, "Deleted application data. app, records"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v8, v12}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v10, v0

    :try_start_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v9

    const-string v11, "Error deleting application data. appId, error"

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v11, v8, v10}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    move-object/from16 v8, v16

    :cond_6
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgo()J

    move-result-wide v9

    const-wide/32 v11, -0x80000000

    cmp-long v13, v9, v11

    if-eqz v13, :cond_7

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzeb;->zzgo()J

    move-result-wide v9

    iget-wide v11, v2, Lcom/google/android/gms/internal/measurement/zzec;->zzadn:J

    cmp-long v13, v9, v11

    if-eqz v13, :cond_8

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "_pv"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzeb;->zzag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/google/android/gms/internal/measurement/zzeu;

    const-string v10, "_au"

    new-instance v11, Lcom/google/android/gms/internal/measurement/zzer;

    invoke-direct {v11, v9}, Lcom/google/android/gms/internal/measurement/zzer;-><init>(Landroid/os/Bundle;)V

    const-string v12, "auto"

    move-object v8, v14

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzer;Ljava/lang/String;J)V

    :goto_1
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzec;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzeb;->zzag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzeb;->zzag()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/internal/measurement/zzec;->zztc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "_pv"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzeb;->zzag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/google/android/gms/internal/measurement/zzeu;

    const-string v10, "_au"

    new-instance v11, Lcom/google/android/gms/internal/measurement/zzer;

    invoke-direct {v11, v9}, Lcom/google/android/gms/internal/measurement/zzer;-><init>(Landroid/os/Bundle;)V

    const-string v12, "auto"

    move-object v8, v14

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzer;Ljava/lang/String;J)V

    goto :goto_1

    :cond_8
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzh(Lcom/google/android/gms/internal/measurement/zzec;)Lcom/google/android/gms/internal/measurement/zzeb;

    if-nez v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    const-string v10, "_f"

    :goto_3
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzei;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v8

    goto :goto_4

    :cond_9
    if-ne v3, v15, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    const-string v10, "_v"

    goto :goto_3

    :cond_a
    move-object/from16 v8, v16

    :goto_4
    if-nez v8, :cond_16

    const-wide/32 v8, 0x36ee80

    div-long v10, v6, v8

    const-wide/16 v13, 0x1

    add-long v17, v10, v13

    mul-long v8, v8, v17

    if-nez v3, :cond_13

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzjs;

    const-string v10, "_fot"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v17, "auto"

    move-object v8, v3

    move-object v9, v10

    move-wide v10, v6

    move-wide v4, v13

    move-object/from16 v13, v17

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzjs;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb(Lcom/google/android/gms/internal/measurement/zzjs;Lcom/google/android/gms/internal/measurement/zzec;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v8, "_c"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_r"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_uwa"

    const-wide/16 v9, 0x0

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_pfo"

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_sys"

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_sysu"

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzeh;->zzav(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-boolean v8, v2, Lcom/google/android/gms/internal/measurement/zzec;->zzaej:Z

    if-eqz v8, :cond_b

    const-string v8, "_dac"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_b
    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-nez v8, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v8

    const-string v9, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v10, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_9

    :cond_c
    :try_start_3
    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v8, v0

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v9

    const-string v10, "Package info is null, first open report might be inaccurate. appId"

    iget-object v11, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v8}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v8, v16

    :goto_5
    if-eqz v8, :cond_f

    iget-wide v9, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_f

    iget-wide v9, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v11, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v8, v9, v11

    if-eqz v8, :cond_d

    const-string v8, "_uwa"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v8, 0x0

    goto :goto_6

    :cond_d
    const/4 v8, 0x1

    :goto_6
    new-instance v14, Lcom/google/android/gms/internal/measurement/zzjs;

    const-string v9, "_fi"

    if-eqz v8, :cond_e

    move-wide v10, v4

    goto :goto_7

    :cond_e
    const-wide/16 v10, 0x0

    :goto_7
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "auto"

    move-object v8, v14

    move-wide v10, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzjs;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb(Lcom/google/android/gms/internal/measurement/zzjs;Lcom/google/android/gms/internal/measurement/zzec;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_f
    :try_start_5
    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v8, v0

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v9

    const-string v10, "Application info is null, first open report might be inaccurate. appId"

    iget-object v11, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v8}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v8, v16

    :goto_8
    if-eqz v8, :cond_11

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v9, v15

    if-eqz v9, :cond_10

    const-string v9, "_sys"

    invoke-virtual {v3, v9, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_10
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_11

    const-string v8, "_sysu"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_11
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    const-string v10, "first_open_count"

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzei;->zzl(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-ltz v12, :cond_12

    const-string v10, "_pfo"

    invoke-virtual {v3, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_12
    new-instance v14, Lcom/google/android/gms/internal/measurement/zzeu;

    const-string v9, "_f"

    new-instance v10, Lcom/google/android/gms/internal/measurement/zzer;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/measurement/zzer;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v14

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzer;Ljava/lang/String;J)V

    :goto_a
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzec;)V

    goto :goto_b

    :cond_13
    move-wide v4, v13

    if-ne v3, v15, :cond_15

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzjs;

    const-string v10, "_fvt"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "auto"

    move-object v8, v3

    move-object v9, v10

    move-wide v10, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzjs;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb(Lcom/google/android/gms/internal/measurement/zzjs;Lcom/google/android/gms/internal/measurement/zzec;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v8, "_c"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_r"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzeh;->zzav(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-boolean v8, v2, Lcom/google/android/gms/internal/measurement/zzec;->zzaej:Z

    if-eqz v8, :cond_14

    const-string v8, "_dac"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_14
    new-instance v14, Lcom/google/android/gms/internal/measurement/zzeu;

    const-string v9, "_v"

    new-instance v10, Lcom/google/android/gms/internal/measurement/zzer;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/measurement/zzer;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v14

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzer;Ljava/lang/String;J)V

    goto :goto_a

    :cond_15
    :goto_b
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v8, "_et"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzeu;

    const-string v9, "_e"

    new-instance v10, Lcom/google/android/gms/internal/measurement/zzer;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/measurement/zzer;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzer;Ljava/lang/String;J)V

    :goto_c
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzec;)V

    goto :goto_d

    :cond_16
    iget-boolean v3, v2, Lcom/google/android/gms/internal/measurement/zzec;->zzaeg:Z

    if-eqz v3, :cond_17

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzeu;

    const-string v9, "_cd"

    new-instance v10, Lcom/google/android/gms/internal/measurement/zzer;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/measurement/zzer;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzer;Ljava/lang/String;J)V

    goto :goto_c

    :cond_17
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzei;->endTransaction()V

    throw v2
.end method

.method public final zzga()Lcom/google/android/gms/internal/measurement/zzei;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamr:Lcom/google/android/gms/internal/measurement/zzei;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamr:Lcom/google/android/gms/internal/measurement/zzei;

    return-object v0
.end method

.method public final zzgb()Lcom/google/android/gms/internal/measurement/zzfe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamm:Lcom/google/android/gms/internal/measurement/zzfe;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamm:Lcom/google/android/gms/internal/measurement/zzfe;

    return-object v0
.end method

.method public final zzgc()Lcom/google/android/gms/internal/measurement/zzjv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzaml:Lcom/google/android/gms/internal/measurement/zzjv;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzaml:Lcom/google/android/gms/internal/measurement/zzjv;

    return-object v0
.end method

.method public final zzgd()Lcom/google/android/gms/internal/measurement/zzgf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzami:Lcom/google/android/gms/internal/measurement/zzgf;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzami:Lcom/google/android/gms/internal/measurement/zzgf;

    return-object v0
.end method

.method public final zzge()Lcom/google/android/gms/internal/measurement/zzjk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamh:Lcom/google/android/gms/internal/measurement/zzjk;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamh:Lcom/google/android/gms/internal/measurement/zzjk;

    return-object v0
.end method

.method public final zzgf()Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamg:Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamg:Lcom/google/android/gms/internal/measurement/zzgg;

    return-object v0
.end method

.method public final zzgg()Lcom/google/android/gms/internal/measurement/zzfg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamf:Lcom/google/android/gms/internal/measurement/zzfg;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamf:Lcom/google/android/gms/internal/measurement/zzfg;

    return-object v0
.end method

.method public final zzgh()Lcom/google/android/gms/internal/measurement/zzfr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzame:Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzame:Lcom/google/android/gms/internal/measurement/zzfr;

    return-object v0
.end method

.method public final zzgi()Lcom/google/android/gms/internal/measurement/zzeh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    return-object v0
.end method

.method public final zzi(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjy()V

    return-void
.end method

.method protected final zzjk()Z
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanb:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanc:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanb:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanc:J

    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanc:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjv;->zzx(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzjv;->zzx(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgb;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzqs:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjf;->zza(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanb:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfb;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjv;->zzbz(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanb:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzjl()Lcom/google/android/gms/internal/measurement/zzfg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamf:Lcom/google/android/gms/internal/measurement/zzfg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamf:Lcom/google/android/gms/internal/measurement/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamf:Lcom/google/android/gms/internal/measurement/zzfg;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzjm()Lcom/google/android/gms/internal/measurement/zzfx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamz:Lcom/google/android/gms/internal/measurement/zzfx;

    return-object v0
.end method

.method final zzjn()Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamg:Lcom/google/android/gms/internal/measurement/zzgg;

    return-object v0
.end method

.method public final zzjo()Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamj:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public final zzjp()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamk:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public final zzjq()Lcom/google/android/gms/internal/measurement/zzfk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamn:Lcom/google/android/gms/internal/measurement/zzfk;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzhk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamn:Lcom/google/android/gms/internal/measurement/zzfk;

    return-object v0
.end method

.method final zzju()J
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzajy:Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfu;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzaeh:J

    return-wide v0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzaeh:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzjw()V
    .locals 14
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzann:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfx()Lcom/google/android/gms/internal/measurement/zzil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzil;->zzkn()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v2, "Upload data called on the client side before use of service was decided"

    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzann:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzkc()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v2, "Upload called in the client side when service should be used"

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzank:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjy()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanf:Ljava/util/List;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v2, "Uploading requested multiple times"

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjq()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zzew()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzrj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhk()J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long v8, v2, v6

    const/4 v6, 0x0

    invoke-direct {p0, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgl;->zzd(Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzfr;->zzajt:Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfu;->get()J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    const-string v5, "Uploading events. Elapsed time since last upload attempt (ms)"

    const/4 v9, 0x0

    sub-long v9, v2, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzei;->zzhn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v7, -0x1

    if-nez v5, :cond_13

    iget-wide v9, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanj:J

    cmp-long v5, v9, v7

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzei;->zzhu()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanj:J

    :cond_8
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzew;->zzagr:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v5, v4, v7}, Lcom/google/android/gms/internal/measurement/zzeh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzex;)I

    move-result v5

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzew;->zzags:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v7, v4, v8}, Lcom/google/android/gms/internal/measurement/zzeh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzex;)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v7}, Lcom/google/android/gms/internal/measurement/zzei;->zzb(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/zzkl;->zzatq:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v7, v8, Lcom/google/android/gms/internal/measurement/zzkl;->zzatq:Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object v7, v6

    :goto_4
    if-eqz v7, :cond_c

    const/4 v8, 0x0

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzkl;

    iget-object v10, v9, Lcom/google/android/gms/internal/measurement/zzkl;->zzatq:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzkl;->zzatq:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-interface {v5, v1, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    goto :goto_6

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    new-instance v7, Lcom/google/android/gms/internal/measurement/zzkk;

    invoke-direct {v7}, Lcom/google/android/gms/internal/measurement/zzkk;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/android/gms/internal/measurement/zzkl;

    iput-object v8, v7, Lcom/google/android/gms/internal/measurement/zzkk;->zzata:[Lcom/google/android/gms/internal/measurement/zzkl;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhm()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzamd:Lcom/google/android/gms/internal/measurement/zzeh;

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/zzeh;->zzat(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_7

    :cond_d
    const/4 v9, 0x0

    :goto_7
    const/4 v10, 0x0

    :goto_8
    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzkk;->zzata:[Lcom/google/android/gms/internal/measurement/zzkl;

    array-length v11, v11

    if-ge v10, v11, :cond_f

    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzkk;->zzata:[Lcom/google/android/gms/internal/measurement/zzkl;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzkl;

    aput-object v12, v11, v10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzkk;->zzata:[Lcom/google/android/gms/internal/measurement/zzkl;

    aget-object v11, v11, v10

    const-wide/16 v12, 0x30a3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/measurement/zzkl;->zzatp:Ljava/lang/Long;

    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzkk;->zzata:[Lcom/google/android/gms/internal/measurement/zzkl;

    aget-object v11, v11, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/measurement/zzkl;->zzatf:Ljava/lang/Long;

    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzkk;->zzata:[Lcom/google/android/gms/internal/measurement/zzkl;

    aget-object v11, v11, v10

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/measurement/zzkl;->zzatu:Ljava/lang/Boolean;

    if-nez v9, :cond_e

    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzkk;->zzata:[Lcom/google/android/gms/internal/measurement/zzkl;

    aget-object v11, v11, v10

    iput-object v6, v11, Lcom/google/android/gms/internal/measurement/zzkl;->zzauc:Ljava/lang/String;

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/zzfg;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzfe;->zza(Lcom/google/android/gms/internal/measurement/zzkk;)Ljava/lang/String;

    move-result-object v6

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzjv;->zzb(Lcom/google/android/gms/internal/measurement/zzkk;)[B

    move-result-object v11

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzew;->zzahb:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v0

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanf:Ljava/util/List;

    if-eqz v9, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v8

    const-string v9, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanf:Ljava/util/List;

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzfr;->zzaju:Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfu;->set(J)V

    const-string v2, "?"

    iget-object v3, v7, Lcom/google/android/gms/internal/measurement/zzkk;->zzata:[Lcom/google/android/gms/internal/measurement/zzkl;

    array-length v3, v3

    if-lez v3, :cond_12

    iget-object v2, v7, Lcom/google/android/gms/internal/measurement/zzkk;->zzata:[Lcom/google/android/gms/internal/measurement/zzkl;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzkl;->zztd:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v2, v8, v6}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanm:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjq()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v8

    new-instance v13, Lcom/google/android/gms/internal/measurement/zzgo;

    invoke-direct {v13, p0, v4}, Lcom/google/android/gms/internal/measurement/zzgo;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfo;

    const/4 v12, 0x0

    move-object v7, v2

    move-object v9, v4

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/measurement/zzfo;-><init>(Lcom/google/android/gms/internal/measurement/zzfk;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/measurement/zzfm;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzgg;->zzd(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbh(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_13
    iput-wide v7, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzanj:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhk()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long v6, v2, v4

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/zzei;->zzab(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzei;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb(Lcom/google/android/gms/internal/measurement/zzeb;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzann:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzkc()V

    throw v0
.end method

.method final zzjz()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzani:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzani:I

    return-void
.end method

.method final zzka()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzana:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzch()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzkb()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjt()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzane:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfb;->zzii()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzane:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Storage version upgraded. Previous, current version"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Storage version upgrade failed. Previous, current version"

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzana:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjy()V

    :cond_3
    return-void
.end method
