.class public final Lcom/google/android/gms/internal/ads/zzgax;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzgax;",
        "Lcom/google/android/gms/internal/ads/zzgaw;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/ads/zzgax;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Z

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgax;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgax;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgax;->zzi:Lcom/google/android/gms/internal/ads/zzgax;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgax;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgax;->zzb:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgax;->zze:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgax;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzg()Lcom/google/android/gms/internal/ads/zzgax;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgax;->zzi:Lcom/google/android/gms/internal/ads/zzgax;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgax;->zzb:Ljava/lang/String;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgax;->zzi:Lcom/google/android/gms/internal/ads/zzgax;

    return-object p1

    .line 4
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgaw;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgaw;-><init>(Lcom/google/android/gms/internal/ads/zzgav;)V

    return-object p1

    .line 1
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgax;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgax;-><init>()V

    return-object p1

    :pswitch_3
    const/4 p1, 0x5

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

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgax;->zzi:Lcom/google/android/gms/internal/ads/zzgax;

    const-string p3, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000b\u0004\u0007\u0005\u0208"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgax;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgax;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgax;->zzf:I

    return v0
.end method

.method public final zze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgax;->zzg:Z

    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgax;->zzh:Ljava/lang/String;

    return-object v0
.end method
