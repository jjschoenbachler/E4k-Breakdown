.class public final Lcom/google/android/gms/internal/ads/zzjr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/ads/zzjr;",
        ">;"
    }
.end annotation


# instance fields
.field public final zza:Z

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:Z

.field private final zze:I

.field private final zzf:I

.field private final zzg:I

.field private final zzh:I

.field private final zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzjn;ILjava/lang/String;)V
    .locals 5
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzjt;->zzf(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzb:Z

    .line 2
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzd:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzC:I

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzc:Z

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzd:Z

    .line 3
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzt:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfoj;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, ""

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p3

    goto :goto_2

    .line 5
    :cond_2
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzt:Lcom/google/android/gms/internal/ads/zzfoj;

    :goto_2
    const/4 v1, 0x0

    .line 6
    :goto_3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfoj;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 7
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzfoj;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzv:Z

    .line 8
    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzjt;->zzh(Lcom/google/android/gms/internal/ads/zzafv;Ljava/lang/String;Z)I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const v1, 0x7fffffff

    const/4 v3, 0x0

    :goto_4
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zze:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzf:I

    .line 9
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zze:I

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzu:I

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzg:I

    .line 11
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zze:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzi:Z

    .line 12
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzjt;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_5

    const/4 p3, 0x1

    goto :goto_5

    :cond_5
    const/4 p3, 0x0

    .line 13
    :goto_5
    invoke-static {p1, p4, p3}, Lcom/google/android/gms/internal/ads/zzjt;->zzh(Lcom/google/android/gms/internal/ads/zzafv;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzh:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzf:I

    if-gtz p1, :cond_8

    .line 14
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzt:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoj;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzg:I

    if-gtz p1, :cond_8

    :cond_6
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzc:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzd:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzh:I

    if-lez p1, :cond_7

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_6
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjr;->zza:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzjr;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Lcom/google/android/gms/internal/ads/zzjr;)I

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjr;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfny;->zzj()Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzb:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzjr;->zzb:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfny;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zze:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzjr;->zze:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpw;->zzb()Lcom/google/android/gms/internal/ads/zzfpw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfpw;->zza()Lcom/google/android/gms/internal/ads/zzfpw;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfny;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzf:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzjr;->zzf:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfny;->zzb(II)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzg:I

    .line 5
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzjr;->zzg:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfny;->zzb(II)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzc:Z

    .line 6
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzjr;->zzc:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfny;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzd:Z

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzjr;->zzd:Z

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzf:I

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpw;->zzb()Lcom/google/android/gms/internal/ads/zzfpw;

    move-result-object v3

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpw;->zzb()Lcom/google/android/gms/internal/ads/zzfpw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfpw;->zza()Lcom/google/android/gms/internal/ads/zzfpw;

    move-result-object v3

    .line 9
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfny;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzh:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzjr;->zzh:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfny;->zzb(II)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzg:I

    if-nez v1, :cond_1

    .line 10
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzjr;->zzi:Z

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Lcom/google/android/gms/internal/ads/zzfny;->zzc(ZZ)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfny;->zze()I

    move-result p1

    return p1
.end method
