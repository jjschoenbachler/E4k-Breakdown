.class public final Lcom/google/android/gms/internal/ads/zzgip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgip;


# instance fields
.field private zzb:I

.field private zzc:[I

.field private zzd:[Ljava/lang/Object;

.field private zze:I

.field private zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgip;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzgip;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgip;->zza:Lcom/google/android/gms/internal/ads/zzgip;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    .line 1
    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzgip;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzc:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzf:Z

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgip;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgip;->zza:Lcom/google/android/gms/internal/ads/zzgip;

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/ads/zzgip;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgip;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzgip;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v0
.end method

.method static zzc(Lcom/google/android/gms/internal/ads/zzgip;Lcom/google/android/gms/internal/ads/zzgip;)Lcom/google/android/gms/internal/ads/zzgip;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzc:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzgip;->zzc:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgip;

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgip;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzgip;

    if-nez v2, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgip;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    if-ne v2, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzc:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzgip;->zzc:[I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    .line 3
    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    .line 4
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    add-int/lit16 v1, v0, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzc:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x11

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    :goto_1
    if-ge v3, v2, :cond_1

    mul-int/lit8 v4, v4, 0x1f

    .line 2
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v4

    return v1
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzf:Z

    return-void
.end method

.method public final zze()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->zze:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzc:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    .line 2
    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgex;

    const/16 v4, 0x8

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v3

    add-int/2addr v4, v4

    const/16 v5, 0x10

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    ushr-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v2

    add-int/2addr v5, v2

    add-int/2addr v4, v5

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v2, v5

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgip;->zze:I

    return v1

    :cond_1
    return v0
.end method

.method public final zzf()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->zze:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzc:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3
    :pswitch_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgfh;->zzv(I)I

    move-result v2

    add-int/2addr v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgip;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgip;->zzf()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    .line 5
    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgex;

    shl-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v3

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    .line 7
    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    shl-int/lit8 v2, v3, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    .line 8
    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    shl-int/lit8 v2, v3, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgfh;->zzy(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_1

    .line 1
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    .line 2
    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    shl-int/lit8 v2, v3, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgfh;->zzx(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 8
    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgip;->zze:I

    return v1

    :cond_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zzg(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzc:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzghk;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final zzh(ILjava/lang/Object;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzf:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzc:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzc:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    .line 3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzc:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    .line 4
    aput p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    .line 5
    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 6
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzgfi;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzb:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzc:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgip;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    ushr-int/lit8 v3, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggm;->zzi()Lcom/google/android/gms/internal/ads/zzggl;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2
    :pswitch_0
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzt(I)V

    .line 3
    check-cast v2, Lcom/google/android/gms/internal/ads/zzgip;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgip;->zzi(Lcom/google/android/gms/internal/ads/zzgfi;)V

    .line 4
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzgfi;->zzu(I)V

    goto :goto_1

    .line 6
    :pswitch_1
    check-cast v2, Lcom/google/android/gms/internal/ads/zzgex;

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzgfi;->zzn(ILcom/google/android/gms/internal/ads/zzgex;)V

    goto :goto_1

    .line 7
    :pswitch_2
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgfi;->zzj(IJ)V

    goto :goto_1

    .line 8
    :pswitch_3
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgfi;->zzc(IJ)V

    goto :goto_1

    .line 5
    :cond_0
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzgfi;->zzk(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method