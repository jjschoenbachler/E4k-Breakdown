.class public final Lcom/google/android/gms/internal/ads/zzagh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzagh;

.field public static final zzg:Lcom/google/android/gms/internal/ads/zzadw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzadw<",
            "Lcom/google/android/gms/internal/ads/zzagh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzb:J

.field public final zzc:J

.field public final zzd:J

.field public final zze:F

.field public final zzf:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v9, Lcom/google/android/gms/internal/ads/zzagh;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const v7, -0x800001

    const v8, -0x800001

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzagh;-><init>(JJJFF)V

    sput-object v9, Lcom/google/android/gms/internal/ads/zzagh;->zza:Lcom/google/android/gms/internal/ads/zzagh;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzagg;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzagh;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method public constructor <init>(JJJFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagh;->zzb:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagh;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagh;->zzd:J

    const p1, -0x800001

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagh;->zze:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagh;->zzf:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzagh;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzagh;

    .line 3
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzagh;->zzb:J

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzagh;->zzc:J

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzagh;->zzd:J

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzagh;->zze:F

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzagh;->zzf:F

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const-wide v0, -0x7fffffff7fffffffL    # -1.060997896E-314

    long-to-int v0, v0

    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    const v0, -0x800001

    .line 1
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
