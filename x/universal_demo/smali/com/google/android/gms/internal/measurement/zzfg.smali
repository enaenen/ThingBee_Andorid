.class public final Lcom/google/android/gms/internal/measurement/zzfg;
.super Lcom/google/android/gms/internal/measurement/zzhk;


# instance fields
.field private zzadp:J

.field private zzaim:C

.field private zzain:Ljava/lang/String;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzaio:Lcom/google/android/gms/internal/measurement/zzfi;

.field private final zzaip:Lcom/google/android/gms/internal/measurement/zzfi;

.field private final zzaiq:Lcom/google/android/gms/internal/measurement/zzfi;

.field private final zzair:Lcom/google/android/gms/internal/measurement/zzfi;

.field private final zzais:Lcom/google/android/gms/internal/measurement/zzfi;

.field private final zzait:Lcom/google/android/gms/internal/measurement/zzfi;

.field private final zzaiu:Lcom/google/android/gms/internal/measurement/zzfi;

.field private final zzaiv:Lcom/google/android/gms/internal/measurement/zzfi;

.field private final zzaiw:Lcom/google/android/gms/internal/measurement/zzfi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgl;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhk;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    const/4 p1, 0x0

    iput-char p1, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzaim:C

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzadp:J

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>(Lcom/google/android/gms/internal/measurement/zzfg;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzaio:Lcom/google/android/gms/internal/measurement/zzfi;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>(Lcom/google/android/gms/internal/measurement/zzfg;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzaip:Lcom/google/android/gms/internal/measurement/zzfi;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>(Lcom/google/android/gms/internal/measurement/zzfg;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzaiq:Lcom/google/android/gms/internal/measurement/zzfi;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>(Lcom/google/android/gms/internal/measurement/zzfg;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzair:Lcom/google/android/gms/internal/measurement/zzfi;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>(Lcom/google/android/gms/internal/measurement/zzfg;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzais:Lcom/google/android/gms/internal/measurement/zzfi;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>(Lcom/google/android/gms/internal/measurement/zzfg;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzait:Lcom/google/android/gms/internal/measurement/zzfi;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>(Lcom/google/android/gms/internal/measurement/zzfg;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzaiu:Lcom/google/android/gms/internal/measurement/zzfi;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>(Lcom/google/android/gms/internal/measurement/zzfg;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzaiv:Lcom/google/android/gms/internal/measurement/zzfi;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>(Lcom/google/android/gms/internal/measurement/zzfg;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzaiw:Lcom/google/android/gms/internal/measurement/zzfi;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfg;)C
    .locals 0

    iget-char p0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzaim:C

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfg;C)C
    .locals 0

    iput-char p1, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzaim:C

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfg;J)J
    .locals 0

    const-wide/16 p1, 0x30a3

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzadp:J

    return-wide p1
.end method

.method private static zza(ZLjava/lang/Object;)Ljava/lang/String;
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    move-object p0, p1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_4

    const-string p1, "-"

    goto :goto_0

    :cond_4
    const-string p1, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr p0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v3, p1

    :goto_2
    if-ge v1, v3, :cond_a

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzfj;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfj;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zza(Lcom/google/android/gms/internal/measurement/zzfj;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    if-eqz p0, :cond_d

    const-string p0, "-"

    return-object p0

    :cond_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p3}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p4}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfg;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzadp:J

    return-wide v0
.end method

.method protected static zzbh(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static zzbi(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzis()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzain:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzew;->zzagl:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzain:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzain:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final isLoggable(I)Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzis()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected final zza(ILjava/lang/String;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzis()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfg;->isLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {v0, p4, p5, p6, p7}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(ILjava/lang/String;)V

    :cond_0
    if-nez p3, :cond_5

    const/4 p2, 0x5

    if-lt p1, p2, :cond_5

    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzacr:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjn()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object p2

    const/4 p3, 0x6

    if-nez p2, :cond_1

    const-string p1, "Scheduler not set. Not logging error/warn"

    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhk;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Scheduler not initialized. Not logging error/warn"

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    const/16 p3, 0x9

    if-lt p1, p3, :cond_4

    const/16 p1, 0x8

    const/16 v2, 0x8

    goto :goto_1

    :cond_4
    move v2, p1

    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfh;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzfh;-><init>(Lcom/google/android/gms/internal/measurement/zzfg;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzgg;->zzc(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public final bridge synthetic zzab()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzab()V

    return-void
.end method

.method public final bridge synthetic zzbt()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfq()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzfq()V

    return-void
.end method

.method public final bridge synthetic zzfr()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzfr()V

    return-void
.end method

.method public final bridge synthetic zzfs()Lcom/google/android/gms/internal/measurement/zzdx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzfs()Lcom/google/android/gms/internal/measurement/zzdx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzft()Lcom/google/android/gms/internal/measurement/zzee;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzft()Lcom/google/android/gms/internal/measurement/zzee;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfu()Lcom/google/android/gms/internal/measurement/zzhm;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzfu()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfv()Lcom/google/android/gms/internal/measurement/zzfb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfw()Lcom/google/android/gms/internal/measurement/zzeo;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzfw()Lcom/google/android/gms/internal/measurement/zzeo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfx()Lcom/google/android/gms/internal/measurement/zzil;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzfx()Lcom/google/android/gms/internal/measurement/zzil;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfy()Lcom/google/android/gms/internal/measurement/zzih;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzfy()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfz()Lcom/google/android/gms/internal/measurement/zzfc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzfz()Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzga()Lcom/google/android/gms/internal/measurement/zzei;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgb()Lcom/google/android/gms/internal/measurement/zzfe;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzgb()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgc()Lcom/google/android/gms/internal/measurement/zzjv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzgc()Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgd()Lcom/google/android/gms/internal/measurement/zzgf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzgd()Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzge()Lcom/google/android/gms/internal/measurement/zzjk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzge()Lcom/google/android/gms/internal/measurement/zzjk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgf()Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgg()Lcom/google/android/gms/internal/measurement/zzfg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgh()Lcom/google/android/gms/internal/measurement/zzfr;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgi()Lcom/google/android/gms/internal/measurement/zzeh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzgi()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v0

    return-object v0
.end method

.method protected final zzhh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzil()Lcom/google/android/gms/internal/measurement/zzfi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzaio:Lcom/google/android/gms/internal/measurement/zzfi;

    return-object v0
.end method

.method public final zzim()Lcom/google/android/gms/internal/measurement/zzfi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzaip:Lcom/google/android/gms/internal/measurement/zzfi;

    return-object v0
.end method

.method public final zzin()Lcom/google/android/gms/internal/measurement/zzfi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzair:Lcom/google/android/gms/internal/measurement/zzfi;

    return-object v0
.end method

.method public final zzio()Lcom/google/android/gms/internal/measurement/zzfi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzait:Lcom/google/android/gms/internal/measurement/zzfi;

    return-object v0
.end method

.method public final zzip()Lcom/google/android/gms/internal/measurement/zzfi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzaiu:Lcom/google/android/gms/internal/measurement/zzfi;

    return-object v0
.end method

.method public final zziq()Lcom/google/android/gms/internal/measurement/zzfi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzaiv:Lcom/google/android/gms/internal/measurement/zzfi;

    return-object v0
.end method

.method public final zzir()Lcom/google/android/gms/internal/measurement/zzfi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzaiw:Lcom/google/android/gms/internal/measurement/zzfi;

    return-object v0
.end method

.method public final zzit()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzajs:Lcom/google/android/gms/internal/measurement/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfv;->zzfh()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfr;->zzajr:Landroid/util/Pair;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
