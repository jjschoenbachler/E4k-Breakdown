.class public final Lcom/google/android/gms/internal/ads/zzgau;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzgau;",
        "Lcom/google/android/gms/internal/ads/zzgat;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/zzgau;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/ads/zzgex;

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgau;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgau;->zzg:Lcom/google/android/gms/internal/ads/zzgau;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgau;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgau;->zzb:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgex;->zzb:Lcom/google/android/gms/internal/ads/zzgex;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgau;->zze:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzgat;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgau;->zzg:Lcom/google/android/gms/internal/ads/zzgau;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgat;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzgau;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgau;->zzg:Lcom/google/android/gms/internal/ads/zzgau;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/ads/zzgau;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgau;->zzg:Lcom/google/android/gms/internal/ads/zzgau;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzgau;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgau;->zzb:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzgau;Lcom/google/android/gms/internal/ads/zzgex;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgau;->zze:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzgau;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbv;->zza(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgau;->zzf:I

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgau;->zzb:Ljava/lang/String;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgau;->zzg:Lcom/google/android/gms/internal/ads/zzgau;

    return-object p1

    .line 4
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgat;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgat;-><init>(Lcom/google/android/gms/internal/ads/zzgas;)V

    return-object p1

    .line 1
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgau;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgau;-><init>()V

    return-object p1

    :pswitch_3
    const/4 p1, 0x3

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

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgau;->zzg:Lcom/google/android/gms/internal/ads/zzgau;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgau;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgau;->zze:Lcom/google/android/gms/internal/ads/zzgex;

    return-object v0
.end method

.method public final zzi()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgau;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbv;->zzb(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method