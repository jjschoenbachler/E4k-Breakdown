.class public final Lcom/google/android/gms/internal/ads/zzbbn;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzbbn;",
        "Lcom/google/android/gms/internal/ads/zzbbj;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/ads/zzbbn;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/zzggj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzggj<",
            "Lcom/google/android/gms/internal/ads/zzbbi;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:I

.field private zzg:I

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbn;->zzl:Lcom/google/android/gms/internal/ads/zzbbn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbbn;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn;->zzaE()Lcom/google/android/gms/internal/ads/zzggj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zze:Lcom/google/android/gms/internal/ads/zzggj;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzbbj;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn;->zzl:Lcom/google/android/gms/internal/ads/zzbbn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbj;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzbbn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn;->zzl:Lcom/google/android/gms/internal/ads/zzbbn;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbbn;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zze:Lcom/google/android/gms/internal/ads/zzggj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggj;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzaF(Lcom/google/android/gms/internal/ads/zzggj;)Lcom/google/android/gms/internal/ads/zzggj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zze:Lcom/google/android/gms/internal/ads/zzggj;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zze:Lcom/google/android/gms/internal/ads/zzggj;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgeg;->zzar(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzbbn;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzf:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzbbn;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzg:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzbbn;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzh:J

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzbbn;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzbbn;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzbbn;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzb:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzk:J

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn;->zzl:Lcom/google/android/gms/internal/ads/zzbbn;

    return-object p1

    .line 4
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbj;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbj;-><init>(Lcom/google/android/gms/internal/ads/zzazg;)V

    return-object p1

    .line 1
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbn;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbbn;-><init>()V

    return-object p1

    :pswitch_3
    const/16 p1, 0x9

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzb"

    aput-object v0, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-class p3, Lcom/google/android/gms/internal/ads/zzbbi;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbn;->zzl:Lcom/google/android/gms/internal/ads/zzbbn;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u001b\u0002\u1004\u0000\u0003\u1004\u0001\u0004\u1002\u0002\u0005\u1008\u0003\u0006\u1008\u0004\u0007\u1002\u0005"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbbn;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
