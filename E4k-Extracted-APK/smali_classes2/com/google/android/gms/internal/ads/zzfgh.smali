.class public final enum Lcom/google/android/gms/internal/ads/zzfgh;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzfgh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzfgh;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzfgh;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzfgh;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzfgh;

.field public static final enum zze:Lcom/google/android/gms/internal/ads/zzfgh;

.field private static final synthetic zzg:[Lcom/google/android/gms/internal/ads/zzfgh;


# instance fields
.field private final zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgh;

    const-string v1, "DEFINED_BY_JAVASCRIPT"

    const-string v2, "definedByJavaScript"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->zza:Lcom/google/android/gms/internal/ads/zzfgh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgh;

    const-string v1, "HTML_DISPLAY"

    const-string v2, "htmlDisplay"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->zzb:Lcom/google/android/gms/internal/ads/zzfgh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgh;

    const-string v1, "NATIVE_DISPLAY"

    const-string v2, "nativeDisplay"

    const/4 v5, 0x2

    .line 3
    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->zzc:Lcom/google/android/gms/internal/ads/zzfgh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgh;

    const-string v1, "VIDEO"

    const-string v2, "video"

    const/4 v6, 0x3

    .line 4
    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->zzd:Lcom/google/android/gms/internal/ads/zzfgh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgh;

    const-string v1, "AUDIO"

    const-string v2, "audio"

    const/4 v7, 0x4

    .line 5
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->zze:Lcom/google/android/gms/internal/ads/zzfgh;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzfgh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgh;->zza:Lcom/google/android/gms/internal/ads/zzfgh;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgh;->zzb:Lcom/google/android/gms/internal/ads/zzfgh;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgh;->zzc:Lcom/google/android/gms/internal/ads/zzfgh;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgh;->zzd:Lcom/google/android/gms/internal/ads/zzfgh;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgh;->zze:Lcom/google/android/gms/internal/ads/zzfgh;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->zzg:[Lcom/google/android/gms/internal/ads/zzfgh;

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

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgh;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfgh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->zzg:[Lcom/google/android/gms/internal/ads/zzfgh;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfgh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfgh;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgh;->zzf:Ljava/lang/String;

    return-object v0
.end method
