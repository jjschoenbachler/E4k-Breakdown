.class public final enum Lcom/google/android/gms/internal/ads/zzdxp;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdxp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzdxp;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzdxp;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzdxp;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/ads/zzdxp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxp;

    const-string v1, "AD_REQUESTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdxp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxp;->zza:Lcom/google/android/gms/internal/ads/zzdxp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxp;

    const-string v1, "AD_LOADED"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzdxp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxp;->zzb:Lcom/google/android/gms/internal/ads/zzdxp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxp;

    const-string v1, "AD_LOAD_FAILED"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzdxp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxp;->zzc:Lcom/google/android/gms/internal/ads/zzdxp;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdxp;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxp;->zza:Lcom/google/android/gms/internal/ads/zzdxp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxp;->zzb:Lcom/google/android/gms/internal/ads/zzdxp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxp;->zzc:Lcom/google/android/gms/internal/ads/zzdxp;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxp;->zzd:[Lcom/google/android/gms/internal/ads/zzdxp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdxp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxp;->zzd:[Lcom/google/android/gms/internal/ads/zzdxp;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdxp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdxp;

    return-object v0
.end method
