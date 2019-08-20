.class final Lcom/google/android/gms/internal/measurement/zzzu;
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


# instance fields
.field private final zzbvv:Lcom/google/android/gms/internal/measurement/zzzq;

.field private final zzbvw:Lcom/google/android/gms/internal/measurement/zzaao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzaao<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzbvx:Z

.field private final zzbvy:Lcom/google/android/gms/internal/measurement/zzyo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzyo<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzaao;Lcom/google/android/gms/internal/measurement/zzyo;Lcom/google/android/gms/internal/measurement/zzzq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzaao<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzyo<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzzq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzu;->zzbvw:Lcom/google/android/gms/internal/measurement/zzaao;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzyo;->zza(Lcom/google/android/gms/internal/measurement/zzzq;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzzu;->zzbvx:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzu;->zzbvy:Lcom/google/android/gms/internal/measurement/zzyo;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzzu;->zzbvv:Lcom/google/android/gms/internal/measurement/zzzq;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzaao;Lcom/google/android/gms/internal/measurement/zzyo;Lcom/google/android/gms/internal/measurement/zzzq;)Lcom/google/android/gms/internal/measurement/zzzu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzaao<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzyo<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzzq;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzzu<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzu;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzzu;-><init>(Lcom/google/android/gms/internal/measurement/zzaao;Lcom/google/android/gms/internal/measurement/zzyo;Lcom/google/android/gms/internal/measurement/zzzq;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzu;->zzbvw:Lcom/google/android/gms/internal/measurement/zzaao;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzaao;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzu;->zzbvw:Lcom/google/android/gms/internal/measurement/zzaao;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/zzaao;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzzu;->zzbvx:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzu;->zzbvy:Lcom/google/android/gms/internal/measurement/zzyo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyo;->zzu(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzyr;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzu;->zzbvy:Lcom/google/android/gms/internal/measurement/zzyo;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzyo;->zzu(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzyr;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzyr;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzu;->zzbvw:Lcom/google/android/gms/internal/measurement/zzaao;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzaao;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzzu;->zzbvx:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzu;->zzbvy:Lcom/google/android/gms/internal/measurement/zzyo;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzyo;->zzu(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzyr;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyr;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method
