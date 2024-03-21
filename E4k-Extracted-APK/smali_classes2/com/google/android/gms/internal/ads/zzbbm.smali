.class public final enum Lcom/google/android/gms/internal/ads/zzbbm;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzggc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzbbm;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzggc;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzbbm;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzbbm;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzbbm;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzbbm;

.field public static final enum zze:Lcom/google/android/gms/internal/ads/zzbbm;

.field public static final enum zzf:Lcom/google/android/gms/internal/ads/zzbbm;

.field private static final zzg:Lcom/google/android/gms/internal/ads/zzggd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzggd<",
            "Lcom/google/android/gms/internal/ads/zzbbm;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzi:[Lcom/google/android/gms/internal/ads/zzbbm;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbm;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zza:Lcom/google/android/gms/internal/ads/zzbbm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbm;

    const-string v1, "CONNECTING"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zzbbm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzb:Lcom/google/android/gms/internal/ads/zzbbm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbm;

    const-string v1, "CONNECTED"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/zzbbm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzc:Lcom/google/android/gms/internal/ads/zzbbm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbm;

    const-string v1, "DISCONNECTING"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/zzbbm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzd:Lcom/google/android/gms/internal/ads/zzbbm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbm;

    const-string v1, "DISCONNECTED"

    const/4 v6, 0x4

    .line 5
    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/ads/zzbbm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zze:Lcom/google/android/gms/internal/ads/zzbbm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbm;

    const-string v1, "SUSPENDED"

    const/4 v7, 0x5

    .line 6
    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/gms/internal/ads/zzbbm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzf:Lcom/google/android/gms/internal/ads/zzbbm;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzbbm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbm;->zza:Lcom/google/android/gms/internal/ads/zzbbm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbm;->zzb:Lcom/google/android/gms/internal/ads/zzbbm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbm;->zzc:Lcom/google/android/gms/internal/ads/zzbbm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbm;->zzd:Lcom/google/android/gms/internal/ads/zzbbm;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbm;->zze:Lcom/google/android/gms/internal/ads/zzbbm;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbm;->zzf:Lcom/google/android/gms/internal/ads/zzbbm;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzi:[Lcom/google/android/gms/internal/ads/zzbbm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzg:Lcom/google/android/gms/internal/ads/zzggd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzh:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbbm;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzi:[Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbbm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbbm;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/ads/zzbbm;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzf:Lcom/google/android/gms/internal/ads/zzbbm;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbm;->zze:Lcom/google/android/gms/internal/ads/zzbbm;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzd:Lcom/google/android/gms/internal/ads/zzbbm;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzc:Lcom/google/android/gms/internal/ads/zzbbm;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzb:Lcom/google/android/gms/internal/ads/zzbbm;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbm;->zza:Lcom/google/android/gms/internal/ads/zzbbm;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzgge;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbl;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzh:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzh:I

    return v0
.end method
