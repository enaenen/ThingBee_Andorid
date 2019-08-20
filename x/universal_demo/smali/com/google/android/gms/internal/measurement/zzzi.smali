.class final Lcom/google/android/gms/internal/measurement/zzzi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzaab;


# static fields
.field private static final zzbvq:Lcom/google/android/gms/internal/measurement/zzzp;


# instance fields
.field private final zzbvp:Lcom/google/android/gms/internal/measurement/zzzp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvq:Lcom/google/android/gms/internal/measurement/zzzp;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzk;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzzp;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyu;->zzud()Lcom/google/android/gms/internal/measurement/zzyu;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuk()Lcom/google/android/gms/internal/measurement/zzzp;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzzk;-><init>([Lcom/google/android/gms/internal/measurement/zzzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzzi;-><init>(Lcom/google/android/gms/internal/measurement/zzzp;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzzp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzyw;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzp;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvp:Lcom/google/android/gms/internal/measurement/zzzp;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzzo;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzo;->zzuo()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/measurement/zzyv$zzb;->zzbuw:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzuk()Lcom/google/android/gms/internal/measurement/zzzp;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzzp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvq:Lcom/google/android/gms/internal/measurement/zzzp;

    return-object v0
.end method


# virtual methods
.method public final zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzaaa;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/zzaaa<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzaac;->zzh(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvp:Lcom/google/android/gms/internal/measurement/zzzp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzp;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzzo;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzzo;->zzup()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/zzyv;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaac;->zzuy()Lcom/google/android/gms/internal/measurement/zzaao;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyq;->zzty()Lcom/google/android/gms/internal/measurement/zzyo;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzzo;->zzuq()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zza(Lcom/google/android/gms/internal/measurement/zzaao;Lcom/google/android/gms/internal/measurement/zzyo;Lcom/google/android/gms/internal/measurement/zzzq;)Lcom/google/android/gms/internal/measurement/zzzu;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaac;->zzuw()Lcom/google/android/gms/internal/measurement/zzaao;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyq;->zztz()Lcom/google/android/gms/internal/measurement/zzyo;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzzo;->zzuq()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zza(Lcom/google/android/gms/internal/measurement/zzaao;Lcom/google/android/gms/internal/measurement/zzyo;Lcom/google/android/gms/internal/measurement/zzzq;)Lcom/google/android/gms/internal/measurement/zzzu;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzyv;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzo;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzx;->zzut()Lcom/google/android/gms/internal/measurement/zzzv;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzze;->zzuj()Lcom/google/android/gms/internal/measurement/zzze;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaac;->zzuy()Lcom/google/android/gms/internal/measurement/zzaao;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyq;->zzty()Lcom/google/android/gms/internal/measurement/zzyo;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzn;->zzum()Lcom/google/android/gms/internal/measurement/zzzl;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzzt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzzo;Lcom/google/android/gms/internal/measurement/zzzv;Lcom/google/android/gms/internal/measurement/zzze;Lcom/google/android/gms/internal/measurement/zzaao;Lcom/google/android/gms/internal/measurement/zzyo;Lcom/google/android/gms/internal/measurement/zzzl;)Lcom/google/android/gms/internal/measurement/zzzt;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzx;->zzut()Lcom/google/android/gms/internal/measurement/zzzv;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzze;->zzuj()Lcom/google/android/gms/internal/measurement/zzze;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaac;->zzuy()Lcom/google/android/gms/internal/measurement/zzaao;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzn;->zzum()Lcom/google/android/gms/internal/measurement/zzzl;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzzt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzzo;Lcom/google/android/gms/internal/measurement/zzzv;Lcom/google/android/gms/internal/measurement/zzze;Lcom/google/android/gms/internal/measurement/zzaao;Lcom/google/android/gms/internal/measurement/zzyo;Lcom/google/android/gms/internal/measurement/zzzl;)Lcom/google/android/gms/internal/measurement/zzzt;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzo;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzx;->zzus()Lcom/google/android/gms/internal/measurement/zzzv;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzze;->zzui()Lcom/google/android/gms/internal/measurement/zzze;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaac;->zzuw()Lcom/google/android/gms/internal/measurement/zzaao;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyq;->zztz()Lcom/google/android/gms/internal/measurement/zzyo;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzn;->zzul()Lcom/google/android/gms/internal/measurement/zzzl;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzzt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzzo;Lcom/google/android/gms/internal/measurement/zzzv;Lcom/google/android/gms/internal/measurement/zzze;Lcom/google/android/gms/internal/measurement/zzaao;Lcom/google/android/gms/internal/measurement/zzyo;Lcom/google/android/gms/internal/measurement/zzzl;)Lcom/google/android/gms/internal/measurement/zzzt;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzx;->zzus()Lcom/google/android/gms/internal/measurement/zzzv;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzze;->zzui()Lcom/google/android/gms/internal/measurement/zzze;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaac;->zzux()Lcom/google/android/gms/internal/measurement/zzaao;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzn;->zzul()Lcom/google/android/gms/internal/measurement/zzzl;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzzt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzzo;Lcom/google/android/gms/internal/measurement/zzzv;Lcom/google/android/gms/internal/measurement/zzze;Lcom/google/android/gms/internal/measurement/zzaao;Lcom/google/android/gms/internal/measurement/zzyo;Lcom/google/android/gms/internal/measurement/zzzl;)Lcom/google/android/gms/internal/measurement/zzzt;

    move-result-object p1

    return-object p1
.end method
