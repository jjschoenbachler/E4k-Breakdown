.class public final Lcom/google/android/gms/internal/ads/zzazl;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzazl;",
        "Lcom/google/android/gms/internal/ads/zzazk;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzp:Lcom/google/android/gms/internal/ads/zzazl;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzbab;

.field private zzh:Lcom/google/android/gms/internal/ads/zzbad;

.field private zzi:Lcom/google/android/gms/internal/ads/zzggj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzggj<",
            "Lcom/google/android/gms/internal/ads/zzazz;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/ads/zzbaf;

.field private zzk:Lcom/google/android/gms/internal/ads/zzbbp;

.field private zzl:Lcom/google/android/gms/internal/ads/zzbbf;

.field private zzm:Lcom/google/android/gms/internal/ads/zzbat;

.field private zzn:Lcom/google/android/gms/internal/ads/zzbav;

.field private zzo:Lcom/google/android/gms/internal/ads/zzggj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzggj<",
            "Lcom/google/android/gms/internal/ads/zzbcb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzazl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazl;->zzp:Lcom/google/android/gms/internal/ads/zzazl;

    const-class v1, Lcom/google/android/gms/internal/ads/zzazl;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzf:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazl;->zzaE()Lcom/google/android/gms/internal/ads/zzggj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzi:Lcom/google/android/gms/internal/ads/zzggj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazl;->zzaE()Lcom/google/android/gms/internal/ads/zzggj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzo:Lcom/google/android/gms/internal/ads/zzggj;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzazl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzazl;->zzp:Lcom/google/android/gms/internal/ads/zzazl;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/ads/zzazl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzazl;->zzp:Lcom/google/android/gms/internal/ads/zzazl;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzazl;Lcom/google/android/gms/internal/ads/zzazj;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzazj;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazl;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzb:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzb:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzazl;Lcom/google/android/gms/internal/ads/zzbad;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzh:Lcom/google/android/gms/internal/ads/zzbad;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzb:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbad;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazl;->zzh:Lcom/google/android/gms/internal/ads/zzbad;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbad;->zza()Lcom/google/android/gms/internal/ads/zzbad;

    move-result-object v0

    :cond_0
    return-object v0
.end method

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzazl;->zzp:Lcom/google/android/gms/internal/ads/zzazl;

    return-object p1

    .line 5
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzazk;

    .line 4
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzazk;-><init>(Lcom/google/android/gms/internal/ads/zzazg;)V

    return-object p1

    .line 1
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzazl;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzazl;-><init>()V

    return-object p1

    :pswitch_3
    const/16 p1, 0x10

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzb"

    aput-object v0, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazj;->zzc()Lcom/google/android/gms/internal/ads/zzgge;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbam;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lcom/google/android/gms/internal/ads/zzazz;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lcom/google/android/gms/internal/ads/zzbcb;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzazl;->zzp:Lcom/google/android/gms/internal/ads/zzazl;

    const-string p3, "\u0001\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007\u100c\u0000\u0008\u100c\u0001\t\u1009\u0002\n\u1009\u0003\u000b\u001b\u000c\u1009\u0004\r\u1009\u0005\u000e\u1009\u0006\u000f\u1009\u0007\u0010\u1009\u0008\u0011\u001b"

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzazl;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
