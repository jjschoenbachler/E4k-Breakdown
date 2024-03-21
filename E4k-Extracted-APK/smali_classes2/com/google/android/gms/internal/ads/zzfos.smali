.class public final Lcom/google/android/gms/internal/ads/zzfos;
.super Lcom/google/android/gms/internal/ads/zzfoc;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfoc<",
        "TE;>;"
    }
.end annotation


# instance fields
.field zzd:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private zze:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfoc;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfoc;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfot;->zzl(I)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzd:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfod;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfos;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfos;

    return-object p0
.end method

.method public final zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfos;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/ads/zzfos<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzd:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzb:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfot;->zzl(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzd:[Ljava/lang/Object;

    array-length v3, v2

    if-gt v1, v3, :cond_2

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, -0x1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfob;->zza(I)I

    move-result v1

    :goto_0
    and-int/2addr v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzd:[Ljava/lang/Object;

    .line 6
    aget-object v4, v2, v1

    if-nez v4, :cond_0

    .line 8
    aput-object p1, v2, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->zze:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->zze:I

    .line 9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfoc;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoc;

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    .line 10
    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzd:[Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfoc;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoc;

    return-object p0

    .line 10
    :cond_3
    throw v0

    :goto_2
    nop

    goto :goto_2
.end method

.method public final zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfos;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/ads/zzfos<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzd:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfos;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfos;

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfoc;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfod;

    :cond_1
    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzfot;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfot<",
            "TE;>;"
        }
    .end annotation

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzb:I

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzd:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfot;->zzl(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzd:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->zza:[Ljava/lang/Object;

    .line 7
    array-length v1, v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfot;->zzk(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzb:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->zza:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqi;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfqi;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 1
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zza:Lcom/google/android/gms/internal/ads/zzfqd;

    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->zza:[Ljava/lang/Object;

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqd;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfos;->zze:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzd:[Ljava/lang/Object;

    array-length v1, v4

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzb:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfqd;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->zza:[Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfot;->zzj(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfot;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfot;->size()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzb:I

    :goto_2
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzc:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfos;->zzd:[Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
