.class public final Lcom/google/android/gms/internal/ads/zzgjq;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzgjq;",
        "Lcom/google/android/gms/internal/ads/zzgjn;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzk:Lcom/google/android/gms/internal/ads/zzgjq;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/zzgjp;

.field private zzf:Lcom/google/android/gms/internal/ads/zzggj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzggj<",
            "Lcom/google/android/gms/internal/ads/zzgjm;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/ads/zzgex;

.field private zzh:Lcom/google/android/gms/internal/ads/zzgex;

.field private zzi:I

.field private zzj:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgjq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgjq;->zzk:Lcom/google/android/gms/internal/ads/zzgjq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgjq;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzgjq;->zzj:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjq;->zzaE()Lcom/google/android/gms/internal/ads/zzggj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjq;->zzf:Lcom/google/android/gms/internal/ads/zzggj;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgex;->zzb:Lcom/google/android/gms/internal/ads/zzgex;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjq;->zzg:Lcom/google/android/gms/internal/ads/zzgex;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgex;->zzb:Lcom/google/android/gms/internal/ads/zzgex;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjq;->zzh:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgjn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjq;->zzk:Lcom/google/android/gms/internal/ads/zzgjq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgjn;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzgjq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjq;->zzk:Lcom/google/android/gms/internal/ads/zzgjq;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzgjq;Lcom/google/android/gms/internal/ads/zzgjm;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjq;->zzf:Lcom/google/android/gms/internal/ads/zzggj;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggj;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzaF(Lcom/google/android/gms/internal/ads/zzggj;)Lcom/google/android/gms/internal/ads/zzggj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjq;->zzf:Lcom/google/android/gms/internal/ads/zzggj;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgjq;->zzf:Lcom/google/android/gms/internal/ads/zzggj;

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzggj;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 2
    :cond_0
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzgjq;->zzj:B

    return-object p3

    .line 1
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgjq;->zzk:Lcom/google/android/gms/internal/ads/zzgjq;

    return-object p1

    .line 4
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgjn;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgjn;-><init>(Lcom/google/android/gms/internal/ads/zzgjg;)V

    return-object p1

    .line 1
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgjq;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgjq;-><init>()V

    return-object p1

    :pswitch_3
    const/4 p1, 0x7

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzb"

    aput-object p2, p1, v1

    const-string p2, "zze"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/android/gms/internal/ads/zzgjm;

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

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgjq;->zzk:Lcom/google/android/gms/internal/ads/zzgjq;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgjq;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzgjq;->zzj:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method