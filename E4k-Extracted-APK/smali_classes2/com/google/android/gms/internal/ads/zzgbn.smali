.class public final Lcom/google/android/gms/internal/ads/zzgbn;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzgbn;",
        "Lcom/google/android/gms/internal/ads/zzgbm;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/ads/zzgbn;


# instance fields
.field private zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgbn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgbn;->zze:Lcom/google/android/gms/internal/ads/zzgbn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgbn;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbn;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzgbn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzggm;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgbn;->zze:Lcom/google/android/gms/internal/ads/zzgbn;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaI(Lcom/google/android/gms/internal/ads/zzgga;Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgbn;

    return-object p0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzgbn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgbn;->zze:Lcom/google/android/gms/internal/ads/zzgbn;

    return-object v0
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/ads/zzgbn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgbn;->zze:Lcom/google/android/gms/internal/ads/zzgbn;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbn;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    return-object p3

    .line 1
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgbn;->zze:Lcom/google/android/gms/internal/ads/zzgbn;

    return-object p1

    .line 4
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgbm;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgbm;-><init>(Lcom/google/android/gms/internal/ads/zzgbl;)V

    return-object p1

    .line 1
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgbn;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgbn;-><init>()V

    return-object p1

    .line 2
    :pswitch_3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzb"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgbn;->zze:Lcom/google/android/gms/internal/ads/zzgbn;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgbn;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
