.class final Lcom/google/android/gms/internal/measurement/zzzt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzaaa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzaaa<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zzbvu:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaar;->zzvj()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzt;->zzbvu:Lsun/misc/Unsafe;

    return-void
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzzo;Lcom/google/android/gms/internal/measurement/zzzv;Lcom/google/android/gms/internal/measurement/zzze;Lcom/google/android/gms/internal/measurement/zzaao;Lcom/google/android/gms/internal/measurement/zzyo;Lcom/google/android/gms/internal/measurement/zzzl;)Lcom/google/android/gms/internal/measurement/zzzt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzzo;",
            "Lcom/google/android/gms/internal/measurement/zzzv;",
            "Lcom/google/android/gms/internal/measurement/zzze;",
            "Lcom/google/android/gms/internal/measurement/zzaao<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzyo<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzzl;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzzt<",
            "TT;>;"
        }
    .end annotation

    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/zzzz;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method
