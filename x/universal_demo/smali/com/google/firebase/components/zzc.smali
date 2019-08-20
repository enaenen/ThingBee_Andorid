.class public final Lcom/google/firebase/components/zzc;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzag:Lcom/google/firebase/components/zzf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/google/firebase/components/zze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/components/zze;-><init>(Lcom/google/firebase/components/zzd;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/components/zzc;-><init>(Landroid/content/Context;Lcom/google/firebase/components/zzf;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/firebase/components/zzf;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/zzc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/components/zzc;->zzag:Lcom/google/firebase/components/zzf;

    return-void
.end method

.method private static zza(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/google/firebase/components/ComponentRegistrar;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v4, "ComponentDiscovery"

    const-string v5, "Class %s is not an instance of %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    const-string v7, "com.google.firebase.components.ComponentRegistrar"

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/components/ComponentRegistrar;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "ComponentDiscovery"

    const-string v6, "Could not instantiate %s."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v5, "ComponentDiscovery"

    const-string v6, "Could not instantiate %s."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    goto :goto_1

    :catch_2
    move-exception v4

    const-string v5, "ComponentDiscovery"

    const-string v6, "Class %s is not an found."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    :goto_1
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final zzj()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/zzc;->zzag:Lcom/google/firebase/components/zzf;

    iget-object v1, p0, Lcom/google/firebase/components/zzc;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/firebase/components/zzf;->zzc(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/components/zzc;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
