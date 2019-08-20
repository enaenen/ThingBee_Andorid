.class final Lcom/google/firebase/components/zzh;
.super Ljava/lang/Object;


# instance fields
.field private final zzaj:Lcom/google/firebase/components/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Component<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzak:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/zzh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzal:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/zzh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/components/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/Component<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/zzh;->zzak:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/zzh;->zzal:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/firebase/components/zzh;->zzaj:Lcom/google/firebase/components/Component;

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/firebase/components/zzh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zzak:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzb(Lcom/google/firebase/components/zzh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zzal:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzc(Lcom/google/firebase/components/zzh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zzal:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzf()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/zzh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zzak:Ljava/util/Set;

    return-object v0
.end method

.method final zzk()Lcom/google/firebase/components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zzaj:Lcom/google/firebase/components/Component;

    return-object v0
.end method

.method final zzl()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zzal:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method final zzm()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/zzh;->zzak:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method
