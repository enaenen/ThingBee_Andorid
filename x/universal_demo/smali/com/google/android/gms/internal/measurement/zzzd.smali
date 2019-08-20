.class public Lcom/google/android/gms/internal/measurement/zzzd;
.super Ljava/lang/Object;


# static fields
.field private static final zzbvi:Lcom/google/android/gms/internal/measurement/zzyn;


# instance fields
.field private zzbvj:Lcom/google/android/gms/internal/measurement/zzyb;

.field private volatile zzbvk:Lcom/google/android/gms/internal/measurement/zzzq;

.field private volatile zzbvl:Lcom/google/android/gms/internal/measurement/zzyb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyn;->zztw()Lcom/google/android/gms/internal/measurement/zzyn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvi:Lcom/google/android/gms/internal/measurement/zzyn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzzq;)Lcom/google/android/gms/internal/measurement/zzzq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvk:Lcom/google/android/gms/internal/measurement/zzzq;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvk:Lcom/google/android/gms/internal/measurement/zzzq;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvk:Lcom/google/android/gms/internal/measurement/zzzq;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyb;->zzbtj:Lcom/google/android/gms/internal/measurement/zzyb;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvl:Lcom/google/android/gms/internal/measurement/zzyb;
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/zzyy; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvk:Lcom/google/android/gms/internal/measurement/zzzq;

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzyb;->zzbtj:Lcom/google/android/gms/internal/measurement/zzyb;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvl:Lcom/google/android/gms/internal/measurement/zzyb;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvk:Lcom/google/android/gms/internal/measurement/zzzq;

    return-object p1
.end method

.method private final zzuh()Lcom/google/android/gms/internal/measurement/zzyb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvl:Lcom/google/android/gms/internal/measurement/zzyb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvl:Lcom/google/android/gms/internal/measurement/zzyb;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvl:Lcom/google/android/gms/internal/measurement/zzyb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvl:Lcom/google/android/gms/internal/measurement/zzyb;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvk:Lcom/google/android/gms/internal/measurement/zzzq;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyb;->zzbtj:Lcom/google/android/gms/internal/measurement/zzyb;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvl:Lcom/google/android/gms/internal/measurement/zzyb;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvk:Lcom/google/android/gms/internal/measurement/zzzq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzzq;->zzuh()Lcom/google/android/gms/internal/measurement/zzyb;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvl:Lcom/google/android/gms/internal/measurement/zzyb;

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
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzzd;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvk:Lcom/google/android/gms/internal/measurement/zzzq;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvk:Lcom/google/android/gms/internal/measurement/zzzq;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zzuh()Lcom/google/android/gms/internal/measurement/zzyb;

    move-result-object v0

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzzd;->zzuh()Lcom/google/android/gms/internal/measurement/zzyb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyb;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzzq;->zzur()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzd;->zzb(Lcom/google/android/gms/internal/measurement/zzzq;)Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzzq;->zzur()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzd;->zzb(Lcom/google/android/gms/internal/measurement/zzzq;)Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzzq;)Lcom/google/android/gms/internal/measurement/zzzq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvk:Lcom/google/android/gms/internal/measurement/zzzq;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvj:Lcom/google/android/gms/internal/measurement/zzyb;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvl:Lcom/google/android/gms/internal/measurement/zzyb;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzd;->zzbvk:Lcom/google/android/gms/internal/measurement/zzzq;

    return-object v0
.end method
