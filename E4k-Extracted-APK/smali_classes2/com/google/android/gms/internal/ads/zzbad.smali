.class public final Lcom/google/android/gms/internal/ads/zzbad;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzbad;",
        "Lcom/google/android/gms/internal/ads/zzbac;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/ads/zzbad;


# instance fields
.field private zzb:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/ads/zzggj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzggj<",
            "Lcom/google/android/gms/internal/ads/zzazz;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:I

.field private zzh:I

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbad;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbad;->zzj:Lcom/google/android/gms/internal/ads/zzbad;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbad;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zze:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbad;->zzaE()Lcom/google/android/gms/internal/ads/zzggj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzf:Lcom/google/android/gms/internal/ads/zzggj;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzi:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzbad;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbad;->zzj:Lcom/google/android/gms/internal/ads/zzbad;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzbad;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbad;->zzj:Lcom/google/android/gms/internal/ads/zzbad;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbad;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbad;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbad;->zze:Ljava/lang/String;

    return-void
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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbad;->zzj:Lcom/google/android/gms/internal/ads/zzbad;

    return-object p1

    .line 4
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbac;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbac;-><init>(Lcom/google/android/gms/internal/ads/zzazg;)V

    return-object p1

    .line 1
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbad;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbad;-><init>()V

    return-object p1

    :pswitch_3
    const/16 p1, 0xa

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

    const-class p3, Lcom/google/android/gms/internal/ads/zzazz;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbam;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbam;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbam;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbad;->zzj:Lcom/google/android/gms/internal/ads/zzbad;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u100c\u0001\u0004\u100c\u0002\u0005\u100c\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
