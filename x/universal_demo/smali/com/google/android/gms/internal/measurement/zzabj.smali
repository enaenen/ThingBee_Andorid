.class public abstract Lcom/google/android/gms/internal/measurement/zzabj;
.super Ljava/lang/Object;


# instance fields
.field protected volatile zzbzs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzabj;->zzbzs:I

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/measurement/zzabj;[B)Lcom/google/android/gms/internal/measurement/zzabj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzabj;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzabi;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzabj;->zzb(Lcom/google/android/gms/internal/measurement/zzabj;[BII)Lcom/google/android/gms/internal/measurement/zzabj;

    move-result-object p0

    return-object p0
.end method

.method public static final zza(Lcom/google/android/gms/internal/measurement/zzabj;[BII)V
    .locals 0

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzabb;->zzb([BII)Lcom/google/android/gms/internal/measurement/zzabb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzabj;->zza(Lcom/google/android/gms/internal/measurement/zzabb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzabb;->zzvy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final zzb(Lcom/google/android/gms/internal/measurement/zzabj;[BII)Lcom/google/android/gms/internal/measurement/zzabj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzabj;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzabi;
        }
    .end annotation

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaba;->zza([BII)Lcom/google/android/gms/internal/measurement/zzaba;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzabj;->zzb(Lcom/google/android/gms/internal/measurement/zzaba;)Lcom/google/android/gms/internal/measurement/zzabj;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzaba;->zzal(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzabi; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabj;->zzvz()Lcom/google/android/gms/internal/measurement/zzabj;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzabk;->zzc(Lcom/google/android/gms/internal/measurement/zzabj;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zza()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/measurement/zzabb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/measurement/zzaba;)Lcom/google/android/gms/internal/measurement/zzabj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public zzvz()Lcom/google/android/gms/internal/measurement/zzabj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzabj;

    return-object v0
.end method

.method public final zzwf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzabj;->zzbzs:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabj;->zzwg()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzabj;->zzbzs:I

    return v0
.end method

.method public final zzwg()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabj;->zza()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzabj;->zzbzs:I

    return v0
.end method
