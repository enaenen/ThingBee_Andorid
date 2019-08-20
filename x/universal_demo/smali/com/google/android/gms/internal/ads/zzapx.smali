.class public final Lcom/google/android/gms/internal/ads/zzapx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzchp:Ljava/lang/String;

.field private final zzcxo:Lcom/google/android/gms/internal/ads/zznx;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzcxs:Z

.field private final zzdad:Lcom/google/android/gms/internal/ads/zznv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzdae:Lcom/google/android/gms/internal/ads/zzalp;

.field private final zzdaf:[J

.field private final zzdag:[Ljava/lang/String;

.field private zzdah:Z

.field private zzdai:Z

.field private zzdaj:Z

.field private zzdak:Z

.field private zzdal:Lcom/google/android/gms/internal/ads/zzapg;

.field private zzdam:Z

.field private zzdan:Z

.field private zzdao:J

.field private final zzzw:Lcom/google/android/gms/internal/ads/zzang;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzang;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zznv;)V
    .locals 14
    .param p4    # Lcom/google/android/gms/internal/ads/zznx;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zznv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v1, p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzals;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzals;-><init>()V

    const-string v3, "min_1"

    const-wide/16 v4, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzals;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/zzals;

    move-result-object v8

    const-string v9, "1_5"

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzals;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/zzals;

    move-result-object v2

    const-string v3, "5_10"

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzals;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/zzals;

    move-result-object v8

    const-string v9, "10_20"

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzals;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/zzals;

    move-result-object v2

    const-string v3, "20_30"

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzals;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/zzals;

    move-result-object v8

    const-string v9, "30_max"

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzals;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/ads/zzals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzals;->zzrz()Lcom/google/android/gms/internal/ads/zzalp;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzdae:Lcom/google/android/gms/internal/ads/zzalp;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzdah:Z

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzdai:Z

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzdaj:Z

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzdak:Z

    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzdao:J

    move-object v5, p1

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzapx;->mContext:Landroid/content/Context;

    move-object/from16 v5, p2

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzzw:Lcom/google/android/gms/internal/ads/zzang;

    move-object/from16 v5, p3

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzchp:Ljava/lang/String;

    move-object/from16 v5, p4

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzcxo:Lcom/google/android/gms/internal/ads/zznx;

    move-object/from16 v5, p5

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzdad:Lcom/google/android/gms/internal/ads/zznv;

    sget-object v5, Lcom/google/android/gms/internal/ads/zznk;->zzave:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzdag:[Ljava/lang/String;

    new-array v2, v2, [J

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzdaf:[J

    return-void

    :cond_0
    const-string v6, ","

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzdag:[Ljava/lang/String;

    array-length v6, v5

    new-array v6, v6, [J

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzdaf:[J

    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    :try_start_0
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzdaf:[J

    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v6, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    const-string v7, "Unable to parse frame hash target time number."

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzapx;->zzdaf:[J

    aput-wide v3, v6, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final onStop()V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzavd:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdam:Z

    if-nez v0, :cond_5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v1, "native-player-metrics"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzchp:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "player"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdal:Lcom/google/android/gms/internal/ads/zzapg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapg;->zzsp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdae:Lcom/google/android/gms/internal/ads/zzalp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzalp;->zzry()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzalr;

    const-string v2, "fps_c_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzalr;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzalr;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fps_p_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzalr;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_2
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzalr;->zzctb:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdaf:[J

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdag:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdaf:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "fh_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapx;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzzw:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    const-string v4, "gmob-apps"

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdam:Z

    :cond_5
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzapg;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzcxo:Lcom/google/android/gms/internal/ads/zznx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdad:Lcom/google/android/gms/internal/ads/zznv;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "vpc2"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zznq;->zza(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdah:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzcxo:Lcom/google/android/gms/internal/ads/zznx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzcxo:Lcom/google/android/gms/internal/ads/zznx;

    const-string v1, "vpn"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapg;->zzsp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zznx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdal:Lcom/google/android/gms/internal/ads/zzapg;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzapg;)V
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdaj:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdak:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzakb;->zzqp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdak:Z

    if-nez v1, :cond_0

    const-string v1, "VideoMetricsMixin first frame"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzcxo:Lcom/google/android/gms/internal/ads/zznx;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdad:Lcom/google/android/gms/internal/ads/zznv;

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "vff2"

    aput-object v6, v5, v2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zznq;->zza(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdak:Z

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzer()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v4

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzcxs:Z

    const-wide/16 v6, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdan:Z

    if-eqz v1, :cond_2

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdao:J

    const-wide/16 v10, -0x1

    cmp-long v1, v8, v10

    if-eqz v1, :cond_2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    long-to-double v8, v8

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdao:J

    sub-long v12, v4, v10

    long-to-double v10, v12

    div-double/2addr v8, v10

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdae:Lcom/google/android/gms/internal/ads/zzalp;

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzalp;->zza(D)V

    :cond_2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzcxs:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdan:Z

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdao:J

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzavf:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapg;->getCurrentPosition()I

    move-result v1

    int-to-long v8, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdag:[Ljava/lang/String;

    array-length v10, v10

    if-ge v1, v10, :cond_7

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdag:[Ljava/lang/String;

    aget-object v10, v10, v1

    if-nez v10, :cond_6

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdaf:[J

    aget-wide v11, v10, v1

    sub-long v13, v8, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v12, v4, v10

    if-lez v12, :cond_6

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzapx;->zzdag:[Ljava/lang/String;

    const/16 v5, 0x8

    move-object/from16 v10, p1

    invoke-virtual {v10, v5, v5}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v8

    const-wide/16 v9, 0x3f

    move-wide v15, v9

    const/4 v9, 0x0

    const-wide/16 v13, 0x0

    :goto_1
    if-ge v9, v5, :cond_5

    move-wide v11, v15

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v5, :cond_4

    invoke-virtual {v8, v10, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v15

    add-int v15, v16, v15

    const/16 v5, 0x80

    if-le v15, v5, :cond_3

    move-wide v15, v6

    goto :goto_3

    :cond_3
    const-wide/16 v15, 0x0

    :goto_3
    long-to-int v5, v11

    shl-long/2addr v15, v5

    or-long v18, v13, v15

    add-int/lit8 v10, v10, 0x1

    sub-long v13, v11, v6

    move-wide v11, v13

    move-wide/from16 v13, v18

    const/16 v5, 0x8

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    move-wide v15, v11

    const/16 v5, 0x8

    goto :goto_1

    :cond_5
    const-string v5, "%016X"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    return-void

    :cond_6
    move-object/from16 v10, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final zzsv()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdah:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdai:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzcxo:Lcom/google/android/gms/internal/ads/zznx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdad:Lcom/google/android/gms/internal/ads/zznv;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "vfr2"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zznq;->zza(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdai:Z

    :cond_1
    return-void
.end method

.method public final zztt()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzcxs:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdai:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdaj:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzcxo:Lcom/google/android/gms/internal/ads/zznx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdad:Lcom/google/android/gms/internal/ads/zznv;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "vfp2"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zznq;->zza(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdaj:Z

    :cond_0
    return-void
.end method

.method public final zztu()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzcxs:Z

    return-void
.end method
