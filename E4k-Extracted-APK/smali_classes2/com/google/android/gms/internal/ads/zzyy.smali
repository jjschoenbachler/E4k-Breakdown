.class public final Lcom/google/android/gms/internal/ads/zzyy;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzyy;",
        "Lcom/google/android/gms/internal/ads/zzyx;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/ads/zzyy;


# instance fields
.field private zzb:I

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzyy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzyy;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    const-class v1, Lcom/google/android/gms/internal/ads/zzyy;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzi:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzk:J

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzyx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzyy;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzyx;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzyy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzyy;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzyy;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzg:J

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzyy;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzh:J

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzyy;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzi:J

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzyy;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzb:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzj:J

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzyy;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    return-object p1

    .line 4
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzyx;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzyx;-><init>(Lcom/google/android/gms/internal/ads/zzyi;)V

    return-object p1

    .line 1
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzyy;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzyy;-><init>()V

    return-object p1

    :pswitch_3
    const/16 p1, 0x8

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

    sget-object p2, Lcom/google/android/gms/internal/ads/zzyy;->zzl:Lcom/google/android/gms/internal/ads/zzyy;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u1002\u0006"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
