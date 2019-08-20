.class public final Lcom/google/firebase/messaging/zzb;
.super Ljava/lang/Object;


# instance fields
.field private zzbsl:Ljava/lang/String;

.field private zzbsm:Ljava/lang/String;

.field private zzbsn:Ljava/lang/String;

.field private zzbso:Ljava/lang/String;

.field private zzbsp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_exp_set"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbsl:Ljava/lang/String;

    const-string v0, "_exp_activate"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbsm:Ljava/lang/String;

    const-string v0, "_exp_timeout"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbsn:Ljava/lang/String;

    const-string v0, "_exp_expire"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbso:Ljava/lang/String;

    const-string v0, "_exp_clear"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbsp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zztj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbsm:Ljava/lang/String;

    return-object v0
.end method

.method public final zztk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbsn:Ljava/lang/String;

    return-object v0
.end method

.method public final zztl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbso:Ljava/lang/String;

    return-object v0
.end method

.method public final zztm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbsp:Ljava/lang/String;

    return-object v0
.end method
