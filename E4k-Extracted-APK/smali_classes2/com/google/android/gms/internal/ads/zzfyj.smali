.class public final Lcom/google/android/gms/internal/ads/zzfyj;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzfyj;",
        "Lcom/google/android/gms/internal/ads/zzfyi;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/ads/zzfyj;


# instance fields
.field private zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfyj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfyj;->zze:Lcom/google/android/gms/internal/ads/zzfyj;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfyj;

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

.method public static zzc()Lcom/google/android/gms/internal/ads/zzfyi;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfyj;->zze:Lcom/google/android/gms/internal/ads/zzfyj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfyi;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzfyj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfyj;->zze:Lcom/google/android/gms/internal/ads/zzfyj;

    return-object v0
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/ads/zzfyj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfyj;->zze:Lcom/google/android/gms/internal/ads/zzfyj;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzfyj;I)V
    .locals 0

    const/16 p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfyj;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfyj;->zzb:I

    return v0
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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfyj;->zze:Lcom/google/android/gms/internal/ads/zzfyj;

    return-object p1

    .line 4
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfyi;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzfyi;-><init>(Lcom/google/android/gms/internal/ads/zzfyh;)V

    return-object p1

    .line 1
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfyj;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfyj;-><init>()V

    return-object p1

    .line 2
    :pswitch_3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzb"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfyj;->zze:Lcom/google/android/gms/internal/ads/zzfyj;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzfyj;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
