.class final Lcom/google/android/gms/internal/play_billing/zzeq;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@5.2.0"


# static fields
.field static final zza:J

.field static final zzb:Z

.field private static final zzc:Lsun/misc/Unsafe;

.field private static final zzd:Ljava/lang/Class;

.field private static final zze:Z

.field private static final zzf:Lcom/google/android/gms/internal/play_billing/zzep;

.field private static final zzg:Z

.field private static final zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc:Lsun/misc/Unsafe;

    .line 2
    sget v0, Lcom/google/android/gms/internal/play_billing/zzam;->zza:I

    const-class v0, Llibcore/io/Memory;

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzv(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zze:Z

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzv(Ljava/lang/Class;)Z

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-boolean v3, Lcom/google/android/gms/internal/play_billing/zzeq;->zze:Z

    if-eqz v3, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzeo;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzeo;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzen;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzen;-><init>(Lsun/misc/Unsafe;)V

    .line 4
    :cond_2
    :goto_0
    sput-object v2, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    .line 17
    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "objectFieldOffset"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/reflect/Field;

    aput-object v6, v5, v3

    .line 5
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "getLong"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    .line 6
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzB()Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzh(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 4
    :goto_2
    sput-boolean v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzg:Z

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    if-nez v0, :cond_5

    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 34
    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "objectFieldOffset"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/reflect/Field;

    aput-object v6, v5, v3

    .line 9
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "arrayBaseOffset"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v3

    .line 10
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "arrayIndexScale"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v3

    .line 11
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "getInt"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    .line 12
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "putInt"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    .line 13
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "getLong"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    .line 14
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "putLong"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    .line 15
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "getObject"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    .line 16
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "putObject"

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    .line 17
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzh(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 4
    :goto_4
    sput-boolean v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzh:Z

    const-class v0, [B

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzz(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zza:J

    const-class v0, [Z

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzz(Ljava/lang/Class;)I

    const-class v0, [Z

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzA(Ljava/lang/Class;)I

    const-class v0, [I

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzz(Ljava/lang/Class;)I

    const-class v0, [I

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzA(Ljava/lang/Class;)I

    const-class v0, [J

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzz(Ljava/lang/Class;)I

    const-class v0, [J

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzA(Ljava/lang/Class;)I

    const-class v0, [F

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzz(Ljava/lang/Class;)I

    const-class v0, [F

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzA(Ljava/lang/Class;)I

    const-class v0, [D

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzz(Ljava/lang/Class;)I

    const-class v0, [D

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzA(Ljava/lang/Class;)I

    const-class v0, [Ljava/lang/Object;

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzz(Ljava/lang/Class;)I

    const-class v0, [Ljava/lang/Object;

    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzA(Ljava/lang/Class;)I

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzB()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    .line 33
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 34
    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    sput-boolean v2, Lcom/google/android/gms/internal/play_billing/zzeq;->zzb:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzA(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzh:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static zzB()Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/play_billing/zzam;->zza:I

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private static zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static zzD(Ljava/lang/Object;JB)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    long-to-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    iget-object v3, v3, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v0

    .line 2
    invoke-virtual {v3, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static zzE(Ljava/lang/Object;JB)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    iget-object v3, v3, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v0

    .line 2
    invoke-virtual {v3, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zza(Ljava/lang/Object;J)D
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzep;->zza(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static zzb(Ljava/lang/Object;J)F
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzep;->zzb(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static zzc(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static zzd(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static zze(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static zzf(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static zzg()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzem;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzem;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static bridge synthetic zzh(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/play_billing/zzeq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "platform method missing - proto runtime falling back to safer methods: "

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    .line 2
    invoke-virtual {v0, v2, v1, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzi(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzD(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic zzj(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzE(Ljava/lang/Object;JB)V

    return-void
.end method

.method static bridge synthetic zzk(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzD(Ljava/lang/Object;JB)V

    return-void
.end method

.method static bridge synthetic zzl(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzE(Ljava/lang/Object;JB)V

    return-void
.end method

.method static zzm(Ljava/lang/Object;JZ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzep;->zzc(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static zzn([BJB)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    sget-wide v1, Lcom/google/android/gms/internal/play_billing/zzeq;->zza:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/play_billing/zzep;->zzd(Ljava/lang/Object;JB)V

    return-void
.end method

.method static zzo(Ljava/lang/Object;JD)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzep;->zze(Ljava/lang/Object;JD)V

    return-void
.end method

.method static zzp(Ljava/lang/Object;JF)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzep;->zzf(Ljava/lang/Object;JF)V

    return-void
.end method

.method static zzq(Ljava/lang/Object;JI)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zzr(Ljava/lang/Object;JJ)V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static zzs(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic zzt(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, -0x1

    xor-long/2addr p1, v0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic zzu(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static zzv(Ljava/lang/Class;)Z
    .locals 9

    .line 1
    sget v0, Lcom/google/android/gms/internal/play_billing/zzam;->zza:I

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzeq;->zzd:Ljava/lang/Class;

    const-string v2, "peekLong"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeLong"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    .line 3
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeInt"

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    .line 4
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekInt"

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 5
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeByte"

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v0

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 6
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekByte"

    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v0

    .line 7
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeByteArray"

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v0

    const-class v8, [B

    aput-object v8, v7, v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    .line 8
    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekByteArray"

    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v0

    const-class p0, [B

    aput-object p0, v5, v6

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v3

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v4

    .line 9
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    return v0
.end method

.method static zzw(Ljava/lang/Object;J)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzep;->zzg(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static zzx()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzh:Z

    return v0
.end method

.method static zzy()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzg:Z

    return v0
.end method

.method private static zzz(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzh:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeq;->zzf:Lcom/google/android/gms/internal/play_billing/zzep;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzep;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
