.class public abstract Lcom/google/android/gms/internal/measurement/zzyv$zza;
.super Lcom/google/android/gms/internal/measurement/zzyv;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzzr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzyv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzyv$zza<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzyv<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/measurement/zzzr;"
    }
.end annotation


# instance fields
.field protected zzbun:Lcom/google/android/gms/internal/measurement/zzyr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzyr<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyv;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyr;->zzua()Lcom/google/android/gms/internal/measurement/zzyr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyv$zza;->zzbun:Lcom/google/android/gms/internal/measurement/zzyr;

    return-void
.end method
