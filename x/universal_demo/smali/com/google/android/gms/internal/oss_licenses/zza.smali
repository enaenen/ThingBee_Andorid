.class public final Lcom/google/android/gms/internal/oss_licenses/zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/oss_licenses/zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/oss_licenses/zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzi:Ljava/lang/String;

.field private final zzj:J

.field private final zzk:I

.field private final zzl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/oss_licenses/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/oss_licenses/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/oss_licenses/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzi:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzj:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzk:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gms/internal/oss_licenses/zzb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/oss_licenses/zza;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzi:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzj:J

    iput p4, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzk:I

    iput-object p5, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzl:Ljava/lang/String;

    return-void
.end method

.method static zza(Ljava/lang/String;JILjava/lang/String;)Lcom/google/android/gms/internal/oss_licenses/zza;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/oss_licenses/zza;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/oss_licenses/zza;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/oss_licenses/zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzi:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/oss_licenses/zza;->zzi:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzi:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzj:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzk:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzj:J

    return-wide v0
.end method

.method final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/oss_licenses/zza;->zzk:I

    return v0
.end method
