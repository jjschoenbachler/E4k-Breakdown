.class public final Lcom/google/android/gms/internal/ads/zzaqf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapo;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzapq;

.field private static final zzb:[B

.field private static final zzc:[B

.field private static final zzd:Ljava/util/UUID;


# instance fields
.field private zzA:Z

.field private zzB:J

.field private zzC:J

.field private zzD:J

.field private zzE:Lcom/google/android/gms/internal/ads/zzaus;

.field private zzF:Lcom/google/android/gms/internal/ads/zzaus;

.field private zzG:Z

.field private zzH:I

.field private zzI:J

.field private zzJ:J

.field private zzK:I

.field private zzL:I

.field private zzM:[I

.field private zzN:I

.field private zzO:I

.field private zzP:I

.field private zzQ:I

.field private zzR:Z

.field private zzS:Z

.field private zzT:Z

.field private zzU:Z

.field private zzV:B

.field private zzW:I

.field private zzX:I

.field private zzY:I

.field private zzZ:Z

.field private zzaa:Z

.field private zzab:Lcom/google/android/gms/internal/ads/zzapp;

.field private final zzac:Lcom/google/android/gms/internal/ads/zzaqa;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaqh;

.field private final zzf:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzaqe;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzaux;

.field private zzq:Ljava/nio/ByteBuffer;

.field private zzr:J

.field private zzs:J

.field private zzt:J

.field private zzu:J

.field private zzv:J

.field private zzw:Lcom/google/android/gms/internal/ads/zzaqe;

.field private zzx:Z

.field private zzy:I

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaqb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqf;->zza:Lcom/google/android/gms/internal/ads/zzapq;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzb:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzc:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzd:Ljava/util/UUID;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaqf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaqa;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzt:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzu:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzv:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzB:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzC:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzD:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzac:Lcom/google/android/gms/internal/ads/zzaqa;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzac:Lcom/google/android/gms/internal/ads/zzaqa;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqc;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzaqc;-><init>(Lcom/google/android/gms/internal/ads/zzaqf;Lcom/google/android/gms/internal/ads/zzaqd;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaqa;->zzb(Lcom/google/android/gms/internal/ads/zzaqc;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzg:Z

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaqh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zze:Lcom/google/android/gms/internal/ads/zzaqh;

    new-instance p1, Landroid/util/SparseArray;

    .line 5
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzf:Landroid/util/SparseArray;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    const/4 v0, 0x4

    .line 6
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzaux;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzaux;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzk:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    .line 8
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzaux;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzl:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzauv;->zza:[B

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzaux;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzh:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    .line 10
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzaux;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzi:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaux;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzm:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaux;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzn:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    const/16 v0, 0x8

    .line 11
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzaux;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzo:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaux;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzp:Lcom/google/android/gms/internal/ads/zzaux;

    return-void
.end method

.method static synthetic zza()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzd:Ljava/util/UUID;

    return-object v0
.end method

.method static final zzl(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x5

    return p0

    :sswitch_1
    const/4 p0, 0x4

    return p0

    :sswitch_2
    const/4 p0, 0x1

    return p0

    :sswitch_3
    const/4 p0, 0x3

    return p0

    :sswitch_4
    const/4 p0, 0x2

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7672 -> :sswitch_1
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method static final zzm(I)Z
    .locals 1

    const v0, 0x1549a966

    if-eq p0, v0, :cond_1

    const v0, 0x1f43b675

    if-eq p0, v0, :cond_1

    const v0, 0x1c53bb6b

    if-eq p0, v0, :cond_1

    const v0, 0x1654ae6b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzn(Lcom/google/android/gms/internal/ads/zzaqe;J)V
    .locals 12

    const-string v0, "S_TEXT/UTF8"

    .line 1
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzn:Lcom/google/android/gms/internal/ads/zzaux;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzJ:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaqf;->zzc:[B

    goto :goto_0

    :cond_0
    const-wide v4, 0xd693a400L

    .line 9
    div-long v7, v2, v4

    long-to-int v7, v7

    int-to-long v8, v7

    mul-long v8, v8, v4

    sub-long/2addr v2, v8

    const-wide/32 v4, 0x3938700

    div-long v4, v2, v4

    long-to-int v4, v4

    const v5, 0x3938700

    mul-int v5, v5, v4

    int-to-long v8, v5

    sub-long/2addr v2, v8

    const-wide/32 v8, 0xf4240

    div-long v8, v2, v8

    long-to-int v5, v8

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v1

    const/4 v4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v4

    const/4 v4, 0x3

    const v7, 0xf4240

    mul-int v5, v5, v7

    int-to-long v10, v5

    sub-long/2addr v2, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v4

    const-string v2, "%02d:%02d:%02d,%03d"

    .line 3
    invoke-static {v8, v2, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzave;->zzd(Ljava/lang/String;)[B

    move-result-object v2

    :goto_0
    const/16 v3, 0x13

    const/16 v4, 0xc

    .line 5
    invoke-static {v2, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzN:Lcom/google/android/gms/internal/ads/zzapx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzn:Lcom/google/android/gms/internal/ads/zzaux;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zze()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzaux;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzn:Lcom/google/android/gms/internal/ads/zzaux;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zze()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    .line 8
    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzN:Lcom/google/android/gms/internal/ads/zzapx;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzP:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzg:Lcom/google/android/gms/internal/ads/zzapw;

    move-wide v3, p2

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzapx;->zzc(JIIILcom/google/android/gms/internal/ads/zzapw;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzZ:Z

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqf;->zzo()V

    return-void
.end method

.method private final zzo()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzX:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzR:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzS:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzU:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzW:I

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzV:B

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzT:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzm:Lcom/google/android/gms/internal/ads/zzaux;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzc()V

    return-void
.end method

.method private final zzp(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzanp;
        }
    .end annotation

    .line 1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzt:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 1
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zzq([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-array p0, p1, [I

    return-object p0

    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    :cond_1
    add-int/2addr v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method private final zzr(Lcom/google/android/gms/internal/ads/zzapn;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zze()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzh()I

    move-result v0

    if-ge v0, p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    array-length v2, v1

    add-int/2addr v2, v2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zze()I

    move-result v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzb([BI)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zze()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zze()I

    move-result v2

    sub-int v2, p2, v2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaux;->zzf(I)V

    return-void
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzapn;Lcom/google/android/gms/internal/ads/zzaqe;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "S_TEXT/UTF8"

    .line 1
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzaqe;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    add-int/lit8 p2, p3, 0x20

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzn:Lcom/google/android/gms/internal/ads/zzaux;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzh()I

    move-result v0

    if-ge v0, p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzn:Lcom/google/android/gms/internal/ads/zzaux;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaqf;->zzb:[B

    add-int v3, p2, p3

    .line 3
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzn:Lcom/google/android/gms/internal/ads/zzaux;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    const/16 v2, 0x20

    .line 5
    invoke-virtual {p1, v0, v2, p3, v1}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzn:Lcom/google/android/gms/internal/ads/zzaux;

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzn:Lcom/google/android/gms/internal/ads/zzaux;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaux;->zzf(I)V

    return-void

    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaqe;->zzN:Lcom/google/android/gms/internal/ads/zzapx;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzR:Z

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_e

    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/zzaqe;->zze:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzP:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v2, v6

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzP:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzS:Z

    const/16 v6, 0x80

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 8
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 9
    invoke-virtual {p1, v2, v1, v5, v1}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 10
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    aget-byte v2, v2, v1

    and-int/lit16 v7, v2, 0x80

    if-eq v7, v6, :cond_2

    .line 11
    iput-byte v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzV:B

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzS:Z

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string p2, "Extension bit is set in signal byte"

    .line 11
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-byte v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzV:B

    and-int/lit8 v7, v2, 0x1

    if-ne v7, v5, :cond_d

    and-int/2addr v2, v4

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzP:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzP:I

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzT:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzo:Lcom/google/android/gms/internal/ads/zzaux;

    .line 12
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    const/16 v8, 0x8

    .line 13
    invoke-virtual {p1, v7, v1, v8, v1}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzT:Z

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 14
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    if-ne v2, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v9, v1

    .line 15
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 16
    invoke-interface {v0, v6, v5}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzaux;I)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzo:Lcom/google/android/gms/internal/ads/zzaux;

    .line 17
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzo:Lcom/google/android/gms/internal/ads/zzaux;

    .line 18
    invoke-interface {v0, v6, v8}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzaux;I)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    add-int/2addr v6, v8

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    :cond_5
    if-ne v2, v4, :cond_d

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzU:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 19
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 20
    invoke-virtual {p1, v2, v1, v5, v1}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 21
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzl()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzW:I

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzU:Z

    :cond_6
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzW:I

    mul-int/lit8 v2, v2, 0x4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 23
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzaux;->zza(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 24
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 25
    invoke-virtual {p1, v6, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzW:I

    shr-int/2addr v2, v5

    add-int/2addr v2, v5

    mul-int/lit8 v6, v2, 0x6

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzq:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_7

    .line 26
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_8

    .line 27
    :cond_7
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzq:Ljava/nio/ByteBuffer;

    :cond_8
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzq:Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzq:Ljava/nio/ByteBuffer;

    int-to-short v2, v2

    .line 29
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_2
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzW:I

    if-ge v2, v8, :cond_a

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 30
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v8

    rem-int/lit8 v9, v2, 0x2

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzq:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    .line 31
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_9
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzq:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    .line 32
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v7, v8

    goto :goto_2

    :cond_a
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    sub-int v2, p3, v2

    sub-int/2addr v2, v7

    and-int/lit8 v7, v8, 0x1

    if-ne v7, v5, :cond_b

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzq:Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 53
    :cond_b
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzq:Ljava/nio/ByteBuffer;

    int-to-short v2, v2

    .line 34
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzq:Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 33
    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzp:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzq:Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzb([BI)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzp:Lcom/google/android/gms/internal/ads/zzaux;

    .line 37
    invoke-interface {v0, v2, v6}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzaux;I)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    goto :goto_5

    .line 35
    :cond_c
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzaqe;->zzf:[B

    if-eqz v2, :cond_d

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzm:Lcom/google/android/gms/internal/ads/zzaux;

    array-length v7, v2

    .line 38
    invoke-virtual {v6, v2, v7}, Lcom/google/android/gms/internal/ads/zzaux;->zzb([BI)V

    .line 37
    :cond_d
    :goto_5
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzR:Z

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzm:Lcom/google/android/gms/internal/ads/zzaux;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zze()I

    move-result v2

    add-int/2addr p3, v2

    const-string v2, "V_MPEG4/ISO/AVC"

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzaqe;->zza:Ljava/lang/String;

    .line 40
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "V_MPEGH/ISO/HEVC"

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzaqe;->zza:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :goto_6
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    if-ge v2, p3, :cond_12

    sub-int v2, p3, v2

    .line 41
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaqf;->zzt(Lcom/google/android/gms/internal/ads/zzapn;Lcom/google/android/gms/internal/ads/zzapx;I)I

    goto :goto_6

    .line 56
    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzi:Lcom/google/android/gms/internal/ads/zzaux;

    .line 42
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 43
    aput-byte v1, v2, v1

    .line 44
    aput-byte v1, v2, v5

    .line 45
    aput-byte v1, v2, v4

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzaqe;->zzO:I

    rsub-int/lit8 v5, v4, 0x4

    :goto_7
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    if-ge v6, p3, :cond_12

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzX:I

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzm:Lcom/google/android/gms/internal/ads/zzaux;

    .line 46
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzd()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v5, v6

    sub-int v8, v4, v6

    .line 47
    invoke-virtual {p1, v2, v7, v8, v1}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    if-lez v6, :cond_10

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzm:Lcom/google/android/gms/internal/ads/zzaux;

    .line 48
    invoke-virtual {v7, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzk([BII)V

    :cond_10
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzi:Lcom/google/android/gms/internal/ads/zzaux;

    .line 49
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzi:Lcom/google/android/gms/internal/ads/zzaux;

    .line 50
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzX:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzh:Lcom/google/android/gms/internal/ads/zzaux;

    .line 51
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzh:Lcom/google/android/gms/internal/ads/zzaux;

    .line 52
    invoke-interface {v0, v6, v3}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzaux;I)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    goto :goto_7

    .line 53
    :cond_11
    invoke-direct {p0, p1, v0, v6}, Lcom/google/android/gms/internal/ads/zzaqf;->zzt(Lcom/google/android/gms/internal/ads/zzapn;Lcom/google/android/gms/internal/ads/zzapx;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzX:I

    goto :goto_7

    :cond_12
    const-string p1, "A_VORBIS"

    .line 41
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaqe;->zza:Ljava/lang/String;

    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzk:Lcom/google/android/gms/internal/ads/zzaux;

    .line 55
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzk:Lcom/google/android/gms/internal/ads/zzaux;

    .line 56
    invoke-interface {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzaux;I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    :cond_13
    return-void
.end method

.method private final zzt(Lcom/google/android/gms/internal/ads/zzapn;Lcom/google/android/gms/internal/ads/zzapx;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzm:Lcom/google/android/gms/internal/ads/zzaux;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzd()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzm:Lcom/google/android/gms/internal/ads/zzaux;

    .line 3
    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzaux;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzapx;->zzd(Lcom/google/android/gms/internal/ads/zzapn;IZ)I

    move-result p1

    .line 3
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzQ:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzY:I

    return p1
.end method


# virtual methods
.method final zzb(IJJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzanp;
        }
    .end annotation

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c

    const/16 v0, 0xae

    if-eq p1, v0, :cond_b

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_a

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_7

    const v0, 0x18538067

    if-eq p1, v0, :cond_4

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_3

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzx:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzg:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzB:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzA:Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzab:Lcom/google/android/gms/internal/ads/zzapp;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzapu;

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzv:J

    invoke-direct {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzapu;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzapp;->zzc(Lcom/google/android/gms/internal/ads/zzapv;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzx:Z

    return-void

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaus;

    const/16 p2, 0x20

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaus;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzE:Lcom/google/android/gms/internal/ads/zzaus;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaus;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaus;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzF:Lcom/google/android/gms/internal/ads/zzaus;

    return-void

    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzs:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_6

    cmp-long p1, v3, p2

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string p2, "Multiple Segment elements not supported"

    .line 4
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzs:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzr:J

    return-void

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 5
    iput-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzq:Z

    return-void

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 6
    iput-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zze:Z

    return-void

    :cond_9
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzy:I

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzz:J

    return-void

    :cond_a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzG:Z

    return-void

    :cond_b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqe;

    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqe;-><init>(Lcom/google/android/gms/internal/ads/zzaqd;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    return-void

    :cond_c
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzaa:Z

    return-void
.end method

.method final zzc(I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzanp;
        }
    .end annotation

    const/16 v0, 0xa0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_13

    const/16 v0, 0xae

    const/4 v3, 0x0

    if-eq p1, v0, :cond_10

    const/16 v0, 0x4dbb

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const v7, 0x1c53bb6b

    if-eq p1, v0, :cond_d

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_b

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_9

    const v0, 0x1549a966

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eq p1, v0, :cond_7

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_5

    if-eq p1, v7, :cond_0

    goto/16 :goto_4

    .line 58
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzx:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzab:Lcom/google/android/gms/internal/ads/zzapp;

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzs:J

    cmp-long v0, v10, v4

    if-eqz v0, :cond_4

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzv:J

    cmp-long v0, v4, v8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzE:Lcom/google/android/gms/internal/ads/zzaus;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaus;->zzc()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzF:Lcom/google/android/gms/internal/ads/zzaus;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaus;->zzc()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzE:Lcom/google/android/gms/internal/ads/zzaus;

    .line 1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaus;->zzc()I

    move-result v4

    if-eq v0, v4, :cond_1

    goto :goto_2

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzE:Lcom/google/android/gms/internal/ads/zzaus;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaus;->zzc()I

    move-result v0

    .line 4
    new-array v4, v0, [I

    .line 5
    new-array v5, v0, [J

    .line 6
    new-array v7, v0, [J

    .line 7
    new-array v8, v0, [J

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v0, :cond_2

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzE:Lcom/google/android/gms/internal/ads/zzaus;

    .line 8
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzaus;->zzb(I)J

    move-result-wide v10

    aput-wide v10, v8, v9

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzs:J

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzF:Lcom/google/android/gms/internal/ads/zzaus;

    .line 9
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzaus;->zzb(I)J

    move-result-wide v12

    add-long/2addr v10, v12

    aput-wide v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v9, v0, -0x1

    if-ge v1, v9, :cond_3

    add-int/lit8 v9, v1, 0x1

    .line 10
    aget-wide v10, v5, v9

    aget-wide v12, v5, v1

    sub-long/2addr v10, v12

    long-to-int v10, v10

    aput v10, v4, v1

    .line 11
    aget-wide v10, v8, v9

    aget-wide v12, v8, v1

    sub-long/2addr v10, v12

    aput-wide v10, v7, v1

    move v1, v9

    goto :goto_1

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzs:J

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzr:J

    add-long/2addr v0, v10

    .line 12
    aget-wide v10, v5, v9

    sub-long/2addr v0, v10

    long-to-int v0, v0

    aput v0, v4, v9

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzv:J

    .line 13
    aget-wide v10, v8, v9

    sub-long/2addr v0, v10

    aput-wide v0, v7, v9

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzE:Lcom/google/android/gms/internal/ads/zzaus;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzF:Lcom/google/android/gms/internal/ads/zzaus;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapm;

    .line 14
    invoke-direct {v0, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzapm;-><init>([I[J[J[J)V

    goto :goto_3

    .line 1
    :cond_4
    :goto_2
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzE:Lcom/google/android/gms/internal/ads/zzaus;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzF:Lcom/google/android/gms/internal/ads/zzaus;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapu;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzv:J

    .line 2
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzapu;-><init>(J)V

    .line 15
    :goto_3
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzapp;->zzc(Lcom/google/android/gms/internal/ads/zzapv;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzx:Z

    return-void

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzf:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzab:Lcom/google/android/gms/internal/ads/zzapp;

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzapp;->zzbg()V

    return-void

    .line 16
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v0, "No valid tracks were found"

    .line 17
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzt:J

    cmp-long p1, v0, v8

    if-nez p1, :cond_8

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzt:J

    :cond_8
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzu:J

    cmp-long p1, v0, v8

    if-eqz p1, :cond_e

    .line 19
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaqf;->zzp(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzv:J

    return-void

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 20
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zze:Z

    if-eqz v0, :cond_e

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzf:[B

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v0, "Combining encryption and compression is not supported"

    .line 21
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 22
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zze:Z

    if-eqz v0, :cond_e

    .line 23
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzg:Lcom/google/android/gms/internal/ads/zzapw;

    if-eqz v0, :cond_c

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapk;

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzapj;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzapj;

    .line 25
    sget-object v4, Lcom/google/android/gms/internal/ads/zzamx;->zzb:Ljava/util/UUID;

    const-string v5, "video/webm"

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaqe;->zzg:Lcom/google/android/gms/internal/ads/zzapw;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzapw;->zzb:[B

    .line 26
    invoke-direct {v3, v4, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    aput-object v3, v2, v1

    .line 25
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzapk;-><init>([Lcom/google/android/gms/internal/ads/zzapj;)V

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzi:Lcom/google/android/gms/internal/ads/zzapk;

    return-void

    .line 23
    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    .line 24
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_d
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzy:I

    if-eq p1, v6, :cond_f

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzz:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_f

    if-ne p1, v7, :cond_e

    .line 27
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzB:J

    return-void

    :cond_e
    :goto_4
    return-void

    .line 25
    :cond_f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zza:Ljava/lang/String;

    const-string v0, "V_VP8"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_VP9"

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG2"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG4/ISO/SP"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG4/ISO/ASP"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG4/ISO/AP"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG4/ISO/AVC"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEGH/ISO/HEVC"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MS/VFW/FOURCC"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_THEORA"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_OPUS"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_VORBIS"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_AAC"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_MPEG/L2"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_MPEG/L3"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_AC3"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_EAC3"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_TRUEHD"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_DTS"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_DTS/EXPRESS"

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_DTS/LOSSLESS"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_FLAC"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_MS/ACM"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_PCM/INT/LIT"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "S_TEXT/UTF8"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "S_VOBSUB"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "S_HDMV/PGS"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "S_DVBSUB"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzab:Lcom/google/android/gms/internal/ads/zzapp;

    .line 57
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzb:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaqe;->zzb(Lcom/google/android/gms/internal/ads/zzapp;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzf:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 58
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaqe;->zzb:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_12
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    return-void

    .line 27
    :cond_13
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzH:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    return-void

    :cond_14
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzaa:Z

    if-nez p1, :cond_15

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzP:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzP:I

    :cond_15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzf:Landroid/util/SparseArray;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzN:I

    .line 59
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqe;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzI:J

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaqf;->zzn(Lcom/google/android/gms/internal/ads/zzaqe;J)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzH:I

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzapp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzab:Lcom/google/android/gms/internal/ads/zzapp;

    return-void
.end method

.method public final zze(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzD:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzH:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzac:Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqa;->zza()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zze:Lcom/google/android/gms/internal/ads/zzaqh;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqh;->zza()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqf;->zzo()V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzapn;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaqg;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqg;->zza(Lcom/google/android/gms/internal/ads/zzapn;)Z

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzapn;Lcom/google/android/gms/internal/ads/zzapt;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzZ:Z

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzZ:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzac:Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzc(Lcom/google/android/gms/internal/ads/zzapn;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzh()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzA:Z

    if-eqz v3, :cond_1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzC:J

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzB:J

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzapt;->zza:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzA:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzx:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzC:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzapt;->zza:J

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzC:J

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    return v0
.end method

.method final zzh(IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzanp;
        }
    .end annotation

    const/4 v0, 0x6

    const/16 v1, 0x37

    const/16 v2, 0x32

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 10
    :sswitch_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzt:J

    return-void

    :sswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    long-to-int p2, p2

    .line 1
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzd:I

    return-void

    :sswitch_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    long-to-int p2, p2

    .line 2
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzH:I

    return-void

    :sswitch_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 3
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzK:J

    return-void

    :sswitch_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 4
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzJ:J

    return-void

    :sswitch_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    long-to-int p2, p2

    .line 5
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzv:I

    return-void

    :sswitch_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    long-to-int p2, p2

    .line 6
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzu:I

    return-void

    .line 7
    :sswitch_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    iput-boolean v8, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzq:Z

    long-to-int p2, p2

    if-eq p2, v8, :cond_1

    const/16 p3, 0x9

    if-eq p2, p3, :cond_0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 9
    :pswitch_0
    iput v3, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzr:I

    return-void

    .line 8
    :cond_0
    iput v0, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzr:I

    return-void

    .line 10
    :cond_1
    iput v8, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzr:I

    return-void

    :sswitch_8
    long-to-int p1, p2

    if-eq p1, v8, :cond_4

    const/16 p2, 0x10

    if-eq p1, p2, :cond_3

    const/16 p2, 0x12

    if-eq p1, p2, :cond_2

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    const/4 p2, 0x7

    .line 11
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzs:I

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 12
    iput v0, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzs:I

    return-void

    .line 39
    :cond_4
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 13
    iput v5, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzs:I

    return-void

    :sswitch_9
    long-to-int p1, p2

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 15
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 14
    iput v8, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzt:I

    return-void

    .line 12
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 15
    iput v3, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzt:I

    return-void

    .line 14
    :sswitch_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    cmp-long v0, p2, v6

    if-nez v0, :cond_5

    const/4 v4, 0x1

    .line 16
    :cond_5
    iput-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzM:Z

    return-void

    :sswitch_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    long-to-int p2, p2

    .line 17
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzm:I

    return-void

    :sswitch_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    long-to-int p2, p2

    .line 18
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzn:I

    return-void

    :sswitch_d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    long-to-int p2, p2

    .line 19
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzl:I

    return-void

    :sswitch_e
    long-to-int p1, p2

    if-eq p1, v5, :cond_7

    const/16 p2, 0xf

    if-eq p1, p2, :cond_6

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_0

    .line 21
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 22
    iput v3, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzp:I

    return-void

    .line 19
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 23
    iput v4, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzp:I

    return-void

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 20
    iput v5, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzp:I

    return-void

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 21
    iput v8, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzp:I

    return-void

    .line 22
    :sswitch_f
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzs:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzz:J

    return-void

    :sswitch_10
    cmp-long p1, p2, v6

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_11
    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_12
    cmp-long p1, p2, v6

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x38

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AESSettingsCipherMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_13
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x31

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_14
    cmp-long p1, p2, v6

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "EBMLReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_15
    cmp-long p1, p2, v6

    if-ltz p1, :cond_d

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_d

    goto/16 :goto_0

    :cond_d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x35

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DocTypeReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_16
    const-wide/16 v0, 0x3

    cmp-long p1, p2, v0

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentCompAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_17
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzaa:Z

    return-void

    :sswitch_18
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzG:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzF:Lcom/google/android/gms/internal/ads/zzaus;

    .line 31
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaus;->zza(J)V

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzG:Z

    return-void

    .line 32
    :sswitch_19
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzaqf;->zzp(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzD:J

    return-void

    :sswitch_1a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    long-to-int p2, p2

    .line 33
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzb:I

    return-void

    :sswitch_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    long-to-int p2, p2

    .line 34
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzk:I

    return-void

    :sswitch_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzE:Lcom/google/android/gms/internal/ads/zzaus;

    .line 35
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzaqf;->zzp(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaus;->zza(J)V

    return-void

    :sswitch_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    long-to-int p2, p2

    .line 36
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzj:I

    return-void

    :sswitch_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    long-to-int p2, p2

    .line 37
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzG:I

    return-void

    .line 38
    :sswitch_1f
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzaqf;->zzp(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzJ:J

    return-void

    .line 6
    :sswitch_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    cmp-long v0, p2, v6

    if-nez v0, :cond_f

    const/4 v4, 0x1

    .line 39
    :cond_f
    iput-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzL:Z

    return-void

    .line 38
    :sswitch_21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    long-to-int p2, p2

    .line 40
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzc:I

    return-void

    :cond_10
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_21
        0x88 -> :sswitch_20
        0x9b -> :sswitch_1f
        0x9f -> :sswitch_1e
        0xb0 -> :sswitch_1d
        0xb3 -> :sswitch_1c
        0xba -> :sswitch_1b
        0xd7 -> :sswitch_1a
        0xe7 -> :sswitch_19
        0xf1 -> :sswitch_18
        0xfb -> :sswitch_17
        0x4254 -> :sswitch_16
        0x4285 -> :sswitch_15
        0x42f7 -> :sswitch_14
        0x47e1 -> :sswitch_13
        0x47e8 -> :sswitch_12
        0x5031 -> :sswitch_11
        0x5032 -> :sswitch_10
        0x53ac -> :sswitch_f
        0x53b8 -> :sswitch_e
        0x54b0 -> :sswitch_d
        0x54b2 -> :sswitch_c
        0x54ba -> :sswitch_b
        0x55aa -> :sswitch_a
        0x55b9 -> :sswitch_9
        0x55ba -> :sswitch_8
        0x55bb -> :sswitch_7
        0x55bc -> :sswitch_6
        0x55bd -> :sswitch_5
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_3
        0x6264 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method final zzi(ID)V
    .locals 1

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzF:F

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    double-to-float p2, p2

    .line 2
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzE:F

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    double-to-float p2, p2

    .line 3
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzD:F

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    double-to-float p2, p2

    .line 4
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzC:F

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    double-to-float p2, p2

    .line 5
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzB:F

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    double-to-float p2, p2

    .line 6
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzA:F

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    double-to-float p2, p2

    .line 7
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzz:F

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    double-to-float p2, p2

    .line 8
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzy:F

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    double-to-float p2, p2

    .line 9
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzx:F

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    double-to-float p2, p2

    .line 10
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzw:F

    return-void

    :cond_0
    double-to-long p1, p2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzu:J

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    double-to-int p2, p2

    .line 11
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zzI:I

    return-void

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zzj(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzanp;
        }
    .end annotation

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqe;->zza(Lcom/google/android/gms/internal/ads/zzaqe;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_1
    const-string p1, "webm"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DocType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 4
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzaqe;->zza:Ljava/lang/String;

    return-void
.end method

.method final zzk(IILcom/google/android/gms/internal/ads/zzapn;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0xa1

    const/4 v5, 0x4

    const/16 v6, 0xa3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v1, v4, :cond_5

    if-eq v1, v6, :cond_5

    const/16 v4, 0x4255

    if-eq v1, v4, :cond_4

    const/16 v4, 0x47e2

    if-eq v1, v4, :cond_3

    const/16 v4, 0x53ab

    if-eq v1, v4, :cond_2

    const/16 v4, 0x63a2

    if-eq v1, v4, :cond_1

    const/16 v4, 0x7672

    if-ne v1, v4, :cond_0

    .line 11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 1
    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzaqe;->zzo:[B

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaqe;->zzo:[B

    .line 3
    invoke-virtual {v3, v1, v8, v2, v8}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    return-void

    .line 47
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzanp;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1a

    .line 56
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 4
    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzaqe;->zzh:[B

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaqe;->zzh:[B

    .line 6
    invoke-virtual {v3, v1, v8, v2, v8}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    return-void

    .line 7
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzl:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    invoke-static {v1, v8}, Ljava/util/Arrays;->fill([BB)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzl:Lcom/google/android/gms/internal/ads/zzaux;

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    sub-int/2addr v5, v2

    .line 9
    invoke-virtual {v3, v1, v5, v2, v8}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzl:Lcom/google/android/gms/internal/ads/zzaux;

    .line 10
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzl:Lcom/google/android/gms/internal/ads/zzaux;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzy:I

    return-void

    .line 12
    :cond_3
    new-array v1, v2, [B

    .line 13
    invoke-virtual {v3, v1, v8, v2, v8}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzapw;

    .line 14
    invoke-direct {v3, v7, v1}, Lcom/google/android/gms/internal/ads/zzapw;-><init>(I[B)V

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzaqe;->zzg:Lcom/google/android/gms/internal/ads/zzapw;

    return-void

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzw:Lcom/google/android/gms/internal/ads/zzaqe;

    .line 15
    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzaqe;->zzf:[B

    .line 16
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaqe;->zzf:[B

    .line 17
    invoke-virtual {v3, v1, v8, v2, v8}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    return-void

    :cond_5
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzH:I

    const/16 v9, 0x8

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zze:Lcom/google/android/gms/internal/ads/zzaqh;

    .line 18
    invoke-virtual {v4, v3, v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzaqh;->zze(Lcom/google/android/gms/internal/ads/zzapn;ZZI)J

    move-result-wide v10

    long-to-int v4, v10

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzN:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zze:Lcom/google/android/gms/internal/ads/zzaqh;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaqh;->zzb()I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzO:I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzJ:J

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzH:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaux;->zzc()V

    :cond_6
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzf:Landroid/util/SparseArray;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzN:I

    .line 21
    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaqe;

    if-nez v4, :cond_7

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzO:I

    sub-int v1, v2, v1

    .line 22
    invoke-virtual {v3, v1, v8}, Lcom/google/android/gms/internal/ads/zzapn;->zzd(IZ)Z

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzH:I

    return-void

    :cond_7
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzH:I

    if-ne v10, v7, :cond_1b

    const/4 v10, 0x3

    .line 23
    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/zzaqf;->zzr(Lcom/google/android/gms/internal/ads/zzapn;I)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 24
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0x6

    shr-int/2addr v11, v7

    const/16 v13, 0xff

    if-nez v11, :cond_8

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzL:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzM:[I

    .line 25
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzaqf;->zzq([II)[I

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzM:[I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzM:[I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzO:I

    sub-int/2addr v2, v10

    add-int/lit8 v2, v2, -0x3

    .line 26
    aput v2, v5, v8

    goto/16 :goto_5

    :cond_8
    if-ne v1, v6, :cond_1a

    .line 28
    invoke-direct {v0, v3, v5}, Lcom/google/android/gms/internal/ads/zzaqf;->zzr(Lcom/google/android/gms/internal/ads/zzapn;I)V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 29
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    aget-byte v14, v14, v10

    and-int/2addr v14, v13

    add-int/2addr v14, v7

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzL:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzM:[I

    .line 30
    invoke-static {v15, v14}, Lcom/google/android/gms/internal/ads/zzaqf;->zzq([II)[I

    move-result-object v14

    iput-object v14, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzM:[I

    if-ne v11, v12, :cond_9

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzO:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzL:I

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x4

    .line 31
    div-int/2addr v2, v10

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzM:[I

    .line 32
    invoke-static {v5, v8, v10, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_5

    :cond_9
    if-ne v11, v7, :cond_c

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    :goto_0
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzL:I

    add-int/lit8 v14, v14, -0x1

    if-ge v5, v14, :cond_b

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzM:[I

    .line 33
    aput v8, v14, v5

    :cond_a
    add-int/2addr v10, v7

    .line 34
    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/zzaqf;->zzr(Lcom/google/android/gms/internal/ads/zzapn;I)V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 35
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    add-int/lit8 v15, v10, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v13

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzM:[I

    .line 36
    aget v16, v15, v5

    add-int v16, v16, v14

    aput v16, v15, v5

    if-eq v14, v13, :cond_a

    add-int v11, v11, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_b
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzM:[I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzO:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v10

    sub-int/2addr v2, v11

    .line 37
    aput v2, v5, v14

    goto/16 :goto_5

    :cond_c
    if-ne v11, v10, :cond_19

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    :goto_1
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzL:I

    add-int/lit8 v14, v14, -0x1

    if-ge v5, v14, :cond_14

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzM:[I

    .line 38
    aput v8, v14, v5

    add-int/lit8 v10, v10, 0x1

    .line 39
    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/zzaqf;->zzr(Lcom/google/android/gms/internal/ads/zzapn;I)V

    add-int/lit8 v14, v10, -0x1

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 40
    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    aget-byte v15, v15, v14

    if-eqz v15, :cond_13

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v9, :cond_f

    rsub-int/lit8 v16, v15, 0x7

    shl-int v16, v7, v16

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 41
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    aget-byte v6, v6, v14

    and-int v6, v6, v16

    if-eqz v6, :cond_e

    add-int/2addr v10, v15

    .line 42
    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/zzaqf;->zzr(Lcom/google/android/gms/internal/ads/zzapn;I)V

    add-int/lit8 v6, v14, 0x1

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 43
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    aget-byte v12, v12, v14

    and-int/2addr v12, v13

    xor-int/lit8 v14, v16, -0x1

    and-int/2addr v12, v14

    int-to-long v7, v12

    :goto_3
    if-ge v6, v10, :cond_d

    add-int/lit8 v12, v6, 0x1

    shl-long/2addr v7, v9

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 44
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    aget-byte v6, v14, v6

    and-int/2addr v6, v13

    int-to-long v13, v6

    or-long/2addr v7, v13

    move v6, v12

    const/16 v13, 0xff

    goto :goto_3

    :cond_d
    if-lez v5, :cond_10

    const-wide/16 v12, 0x1

    mul-int/lit8 v15, v15, 0x7

    add-int/lit8 v15, v15, 0x6

    shl-long/2addr v12, v15

    const-wide/16 v14, -0x1

    add-long/2addr v12, v14

    sub-long/2addr v7, v12

    goto :goto_4

    :cond_e
    add-int/lit8 v15, v15, 0x1

    const/16 v6, 0xa3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto :goto_2

    :cond_f
    const-wide/16 v7, 0x0

    :cond_10
    :goto_4
    const-wide/32 v12, -0x80000000

    cmp-long v6, v7, v12

    if-ltz v6, :cond_12

    const-wide/32 v12, 0x7fffffff

    cmp-long v6, v7, v12

    if-gtz v6, :cond_12

    long-to-int v6, v7

    .line 46
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzM:[I

    if-eqz v5, :cond_11

    add-int/lit8 v8, v5, -0x1

    .line 45
    aget v8, v7, v8

    add-int/2addr v6, v8

    :cond_11
    aput v6, v7, v5

    add-int/2addr v11, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xa3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto/16 :goto_1

    .line 44
    :cond_12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v2, "EBML lacing sample size out of range."

    .line 46
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v2, "No valid varint length mask found"

    .line 47
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_14
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzM:[I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzO:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v10

    sub-int/2addr v2, v11

    .line 48
    aput v2, v5, v14

    .line 26
    :goto_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 49
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    const/4 v5, 0x0

    aget-byte v6, v2, v5

    const/4 v5, 0x1

    aget-byte v2, v2, v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzD:J

    shl-int/lit8 v5, v6, 0x8

    const/16 v6, 0xff

    and-int/2addr v2, v6

    or-int/2addr v2, v5

    int-to-long v5, v2

    .line 50
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzaqf;->zzp(J)J

    move-result-wide v5

    add-long/2addr v7, v5

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzI:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzj:Lcom/google/android/gms/internal/ads/zzaux;

    .line 51
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    and-int/lit8 v6, v2, 0x8

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzaqe;->zzc:I

    if-eq v7, v5, :cond_17

    const/16 v5, 0xa3

    if-ne v1, v5, :cond_16

    const/16 v1, 0x80

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_15

    const/4 v1, 0x1

    :goto_6
    const/16 v2, 0xa3

    goto :goto_7

    :cond_15
    const/4 v1, 0x0

    goto :goto_6

    :cond_16
    move v2, v1

    const/4 v1, 0x0

    goto :goto_7

    :cond_17
    move v2, v1

    const/4 v1, 0x1

    :goto_7
    if-ne v6, v9, :cond_18

    const/high16 v8, -0x80000000

    goto :goto_8

    :cond_18
    const/4 v8, 0x0

    :goto_8
    or-int/2addr v1, v8

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzP:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzH:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzK:I

    move v1, v2

    goto :goto_9

    .line 56
    :cond_19
    new-instance v1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v2, "Unexpected lacing value: 2"

    .line 55
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_1a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v2, "Lacing only supported in SimpleBlocks."

    .line 27
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    :goto_9
    const/16 v2, 0xa3

    if-ne v1, v2, :cond_1d

    .line 51
    :goto_a
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzK:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzL:I

    if-ge v1, v2, :cond_1c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzM:[I

    .line 52
    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzaqf;->zzs(Lcom/google/android/gms/internal/ads/zzapn;Lcom/google/android/gms/internal/ads/zzaqe;I)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzI:J

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzK:I

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzaqe;->zzd:I

    mul-int v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 53
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqf;->zzn(Lcom/google/android/gms/internal/ads/zzaqe;J)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzK:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzK:I

    goto :goto_a

    :cond_1c
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzH:I

    return-void

    :cond_1d
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqf;->zzM:[I

    .line 54
    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzaqf;->zzs(Lcom/google/android/gms/internal/ads/zzapn;Lcom/google/android/gms/internal/ads/zzaqe;I)V

    return-void
.end method
