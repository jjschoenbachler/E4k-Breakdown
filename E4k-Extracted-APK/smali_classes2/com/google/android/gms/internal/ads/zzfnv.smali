.class final Lcom/google/android/gms/internal/ads/zzfnv;
.super Lcom/google/android/gms/internal/ads/zzfny;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfny;-><init>(Lcom/google/android/gms/internal/ads/zzfnx;)V

    return-void
.end method

.method static final zzf(I)Lcom/google/android/gms/internal/ads/zzfny;
    .locals 0

    if-gez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfny;->zzh()Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfny;->zzi()Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfny;->zzg()Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfny;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzfny;"
        }
    .end annotation

    .line 1
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfnv;->zzf(I)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(II)Lcom/google/android/gms/internal/ads/zzfny;
    .locals 0

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfnv;->zzf(I)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(ZZ)Lcom/google/android/gms/internal/ads/zzfny;
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lcom/google/android/gms/internal/ads/zzfqq;->zza(ZZ)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfnv;->zzf(I)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfny;
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfqq;->zza(ZZ)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfnv;->zzf(I)Lcom/google/android/gms/internal/ads/zzfny;

    move-result-object p1

    return-object p1
.end method

.method public final zze()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
