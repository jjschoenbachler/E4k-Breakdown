.class final synthetic Lcom/google/android/gms/internal/ads/zzckg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapq;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzapq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzckg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzckg;->zza:Lcom/google/android/gms/internal/ads/zzapq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()[Lcom/google/android/gms/internal/ads/zzapo;
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzcki;->zzc:I

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzapo;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzara;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzara;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqf;

    .line 3
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqf;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
