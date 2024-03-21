.class public final enum Lcom/google/android/gms/internal/ads/zzdxy;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdxy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzdxy;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzdxy;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzdxy;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/ads/zzdxy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxy;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdxy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxy;->zza:Lcom/google/android/gms/internal/ads/zzdxy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxy;

    const-string v1, "SHAKE"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzdxy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxy;->zzb:Lcom/google/android/gms/internal/ads/zzdxy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxy;

    const-string v1, "FLICK"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzdxy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxy;->zzc:Lcom/google/android/gms/internal/ads/zzdxy;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdxy;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxy;->zza:Lcom/google/android/gms/internal/ads/zzdxy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxy;->zzb:Lcom/google/android/gms/internal/ads/zzdxy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxy;->zzc:Lcom/google/android/gms/internal/ads/zzdxy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxy;->zzd:[Lcom/google/android/gms/internal/ads/zzdxy;

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

.method public static values()[Lcom/google/android/gms/internal/ads/zzdxy;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxy;->zzd:[Lcom/google/android/gms/internal/ads/zzdxy;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdxy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdxy;

    return-object v0
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdxy;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzdxy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdxy;

    return-object p0
.end method
