.class final Lcom/google/android/gms/internal/measurement/zzii;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzapl:Z

.field private final synthetic zzapm:Lcom/google/android/gms/internal/measurement/zzig;

.field private final synthetic zzapn:Lcom/google/android/gms/internal/measurement/zzik;

.field private final synthetic zzapo:Lcom/google/android/gms/internal/measurement/zzih;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzih;ZLcom/google/android/gms/internal/measurement/zzig;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapo:Lcom/google/android/gms/internal/measurement/zzih;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapl:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapm:Lcom/google/android/gms/internal/measurement/zzig;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapn:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapo:Lcom/google/android/gms/internal/measurement/zzih;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzih;->zzapc:Lcom/google/android/gms/internal/measurement/zzik;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapo:Lcom/google/android/gms/internal/measurement/zzih;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapo:Lcom/google/android/gms/internal/measurement/zzih;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzih;->zzapc:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzih;->zza(Lcom/google/android/gms/internal/measurement/zzih;Lcom/google/android/gms/internal/measurement/zzik;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapm:Lcom/google/android/gms/internal/measurement/zzig;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapm:Lcom/google/android/gms/internal/measurement/zzig;

    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/zzig;->zzapb:J

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapn:Lcom/google/android/gms/internal/measurement/zzik;

    iget-wide v4, v0, Lcom/google/android/gms/internal/measurement/zzik;->zzapb:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapm:Lcom/google/android/gms/internal/measurement/zzig;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzig;->zzapa:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapn:Lcom/google/android/gms/internal/measurement/zzik;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzik;->zzapa:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzjv;->zzs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapm:Lcom/google/android/gms/internal/measurement/zzig;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzig;->zzug:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapn:Lcom/google/android/gms/internal/measurement/zzik;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzik;->zzug:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzjv;->zzs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapn:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzih;->zza(Lcom/google/android/gms/internal/measurement/zzig;Landroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapm:Lcom/google/android/gms/internal/measurement/zzig;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapm:Lcom/google/android/gms/internal/measurement/zzig;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzig;->zzug:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "_pn"

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapm:Lcom/google/android/gms/internal/measurement/zzig;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzig;->zzug:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "_pc"

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapm:Lcom/google/android/gms/internal/measurement/zzig;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzig;->zzapa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_pi"

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapm:Lcom/google/android/gms/internal/measurement/zzig;

    iget-wide v2, v2, Lcom/google/android/gms/internal/measurement/zzig;->zzapb:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapo:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhj;->zzfu()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_vs"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzhm;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapo:Lcom/google/android/gms/internal/measurement/zzih;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapn:Lcom/google/android/gms/internal/measurement/zzik;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzih;->zzapc:Lcom/google/android/gms/internal/measurement/zzik;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapo:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzfx()Lcom/google/android/gms/internal/measurement/zzil;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapn:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzil;->zza(Lcom/google/android/gms/internal/measurement/zzig;)V

    return-void
.end method
