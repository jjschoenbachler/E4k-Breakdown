.class public final Lcom/google/android/gms/internal/ads/zzazt;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzazt;",
        "Lcom/google/android/gms/internal/ads/zzazs;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/ads/zzazt;


# instance fields
.field private zzb:I

.field private zze:Z

.field private zzf:Z

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzazt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazt;->zzh:Lcom/google/android/gms/internal/ads/zzazt;

    const-class v1, Lcom/google/android/gms/internal/ads/zzazt;

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

.method public static zza()Lcom/google/android/gms/internal/ads/zzazs;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazt;->zzh:Lcom/google/android/gms/internal/ads/zzazt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazs;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzazt;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzazt;->zzh:Lcom/google/android/gms/internal/ads/zzazt;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzazt;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazt;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazt;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzazt;->zze:Z

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzazt;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazt;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazt;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzazt;->zzf:Z

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzazt;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazt;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazt;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazt;->zzg:I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzazt;->zzh:Lcom/google/android/gms/internal/ads/zzazt;

    return-object p1

    .line 4
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzazs;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzazs;-><init>(Lcom/google/android/gms/internal/ads/zzazg;)V

    return-object p1

    .line 1
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzazt;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzazt;-><init>()V

    return-object p1

    :pswitch_3
    const/4 p1, 0x4

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

    sget-object p2, Lcom/google/android/gms/internal/ads/zzazt;->zzh:Lcom/google/android/gms/internal/ads/zzazt;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u100b\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzazt;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

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
