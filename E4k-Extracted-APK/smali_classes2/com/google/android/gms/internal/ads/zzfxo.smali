.class public final Lcom/google/android/gms/internal/ads/zzfxo;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzfxo;",
        "Lcom/google/android/gms/internal/ads/zzfxn;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/zzfxo;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/zzfxu;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgai;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfxo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfxo;->zzg:Lcom/google/android/gms/internal/ads/zzfxo;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfxo;

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

.method public static zze(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzfxo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzggm;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfxo;->zzg:Lcom/google/android/gms/internal/ads/zzfxo;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaI(Lcom/google/android/gms/internal/ads/zzgga;Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfxo;

    return-object p0
.end method

.method public static zzf()Lcom/google/android/gms/internal/ads/zzfxn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfxo;->zzg:Lcom/google/android/gms/internal/ads/zzfxo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfxn;

    return-object v0
.end method

.method static synthetic zzg()Lcom/google/android/gms/internal/ads/zzfxo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfxo;->zzg:Lcom/google/android/gms/internal/ads/zzfxo;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzfxo;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfxo;->zzb:I

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzfxo;Lcom/google/android/gms/internal/ads/zzfxu;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxo;->zze:Lcom/google/android/gms/internal/ads/zzfxu;

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzfxo;Lcom/google/android/gms/internal/ads/zzgai;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxo;->zzf:Lcom/google/android/gms/internal/ads/zzgai;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfxo;->zzb:I

    return v0
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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfxo;->zzg:Lcom/google/android/gms/internal/ads/zzfxo;

    return-object p1

    .line 4
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfxn;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzfxn;-><init>(Lcom/google/android/gms/internal/ads/zzfxm;)V

    return-object p1

    .line 1
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfxo;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfxo;-><init>()V

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

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfxo;->zzg:Lcom/google/android/gms/internal/ads/zzfxo;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzfxo;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfxu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxo;->zze:Lcom/google/android/gms/internal/ads/zzfxu;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxu;->zzg()Lcom/google/android/gms/internal/ads/zzfxu;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgai;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxo;->zzf:Lcom/google/android/gms/internal/ads/zzgai;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgai;->zzg()Lcom/google/android/gms/internal/ads/zzgai;

    move-result-object v0

    :cond_0
    return-object v0
.end method
