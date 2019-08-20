.class public final Lcom/google/android/gms/internal/measurement/zzfi;
.super Ljava/lang/Object;


# instance fields
.field private final priority:I

.field private final synthetic zzajc:Lcom/google/android/gms/internal/measurement/zzfg;

.field private final zzajd:Z

.field private final zzaje:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfg;IZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzajc:Lcom/google/android/gms/internal/measurement/zzfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzfi;->priority:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzajd:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzaje:Z

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzajc:Lcom/google/android/gms/internal/measurement/zzfg;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzfi;->priority:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzajd:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzaje:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzajc:Lcom/google/android/gms/internal/measurement/zzfg;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzfi;->priority:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzajd:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzaje:Z

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzajc:Lcom/google/android/gms/internal/measurement/zzfg;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzfi;->priority:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzajd:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzaje:Z

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzajc:Lcom/google/android/gms/internal/measurement/zzfg;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzfi;->priority:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzajd:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zzaje:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
