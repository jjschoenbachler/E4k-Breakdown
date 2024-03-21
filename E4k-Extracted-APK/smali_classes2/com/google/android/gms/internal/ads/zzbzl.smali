.class public final enum Lcom/google/android/gms/internal/ads/zzbzl;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzbzl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzbzl;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzbzl;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzbzl;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/ads/zzbzl;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzl;

    const-string v1, "HTML_DISPLAY"

    const-string v2, "htmlDisplay"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzbzl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbzl;->zza:Lcom/google/android/gms/internal/ads/zzbzl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzl;

    const-string v1, "NATIVE_DISPLAY"

    const-string v2, "nativeDisplay"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzbzl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbzl;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzl;

    const-string v1, "VIDEO"

    const-string v2, "video"

    const/4 v5, 0x2

    .line 3
    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ads/zzbzl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbzl;->zzc:Lcom/google/android/gms/internal/ads/zzbzl;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzbzl;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzl;->zza:Lcom/google/android/gms/internal/ads/zzbzl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzl;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzl;->zzc:Lcom/google/android/gms/internal/ads/zzbzl;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbzl;->zze:[Lcom/google/android/gms/internal/ads/zzbzl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbzl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzl;->zze:[Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbzl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbzl;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzd:Ljava/lang/String;

    return-object v0
.end method
