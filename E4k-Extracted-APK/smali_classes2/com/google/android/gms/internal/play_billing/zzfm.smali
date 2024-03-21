.class public final Lcom/google/android/gms/internal/play_billing/zzfm;
.super Lcom/google/android/gms/internal/play_billing/zzcb;
.source "com.android.billingclient:billing@@5.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdg;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzfm;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzfm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzfm;->zzb:Lcom/google/android/gms/internal/play_billing/zzfm;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzfm;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzo(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzcb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcb;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->zze:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static zzu()Lcom/google/android/gms/internal/play_billing/zzfl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfm;->zzb:Lcom/google/android/gms/internal/play_billing/zzfm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zze()Lcom/google/android/gms/internal/play_billing/zzbx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfl;

    return-object v0
.end method

.method static synthetic zzv()Lcom/google/android/gms/internal/play_billing/zzfm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfm;->zzb:Lcom/google/android/gms/internal/play_billing/zzfm;

    return-object v0
.end method

.method static synthetic zzw(Lcom/google/android/gms/internal/play_billing/zzfm;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzx(Lcom/google/android/gms/internal/play_billing/zzfm;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfm;->zzf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zzt(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    return-object p3

    .line 1
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzfm;->zzb:Lcom/google/android/gms/internal/play_billing/zzfm;

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfl;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzfl;-><init>(Lcom/google/android/gms/internal/play_billing/zzfk;)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzfm;-><init>()V

    return-object p1

    :pswitch_3
    const-string p1, "zzd"

    const/4 p3, 0x3

    .line 2
    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "zze"

    aput-object p1, p3, p2

    const/4 p1, 0x2

    const-string p2, "zzf"

    aput-object p2, p3, p1

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzfm;->zzb:Lcom/google/android/gms/internal/play_billing/zzfm;

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001"

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfm;->zzl(Lcom/google/android/gms/internal/play_billing/zzdf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
