.class public final Lcom/google/android/gms/internal/ads/zzbcb;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzbcb;",
        "Lcom/google/android/gms/internal/ads/zzbca;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzu:Lcom/google/android/gms/internal/ads/zzbcb;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/zzbck;

.field private zzf:Lcom/google/android/gms/internal/ads/zzbco;

.field private zzg:Lcom/google/android/gms/internal/ads/zzbcq;

.field private zzh:Lcom/google/android/gms/internal/ads/zzbcs;

.field private zzi:Lcom/google/android/gms/internal/ads/zzbcd;

.field private zzj:Lcom/google/android/gms/internal/ads/zzbcm;

.field private zzk:Lcom/google/android/gms/internal/ads/zzbci;

.field private zzl:I

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/ads/zzbbx;

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private zzt:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcb;->zzu:Lcom/google/android/gms/internal/ads/zzbcb;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbcb;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/ads/zzbcb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcb;->zzu:Lcom/google/android/gms/internal/ads/zzbcb;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    return-object p3

    .line 1
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcb;->zzu:Lcom/google/android/gms/internal/ads/zzbcb;

    return-object p1

    .line 4
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbca;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbca;-><init>(Lcom/google/android/gms/internal/ads/zzazg;)V

    return-object p1

    .line 1
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbcb;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbcb;-><init>()V

    return-object p1

    :pswitch_3
    const/16 p1, 0x11

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzb"

    aput-object v0, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzt"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbcb;->zzu:Lcom/google/android/gms/internal/ads/zzbcb;

    const-string p3, "\u0001\u0010\u0000\u0001\u0005\u0014\u0010\u0000\u0000\u0000\u0005\u1009\u0000\u0006\u1009\u0001\u0007\u1009\u0002\u0008\u1009\u0003\t\u1009\u0004\n\u1009\u0005\u000b\u1009\u0006\u000c\u1004\u0007\r\u1004\u0008\u000e\u1009\t\u000f\u1004\n\u0010\u1004\u000b\u0011\u1004\u000c\u0012\u1004\r\u0013\u1004\u000e\u0014\u1003\u000f"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbcb;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
