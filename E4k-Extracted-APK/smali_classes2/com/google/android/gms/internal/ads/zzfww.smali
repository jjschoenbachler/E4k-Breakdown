.class final Lcom/google/android/gms/internal/ads/zzfww;
.super Lcom/google/android/gms/internal/ads/zzfts;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzfts<",
        "Lcom/google/android/gms/internal/ads/zzgal;",
        "Lcom/google/android/gms/internal/ads/zzgai;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfwx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfwx;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfww;->zza:Lcom/google/android/gms/internal/ads/zzfwx;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfts;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzghi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgal;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgal;->zzc()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgal;->zza()Lcom/google/android/gms/internal/ads/zzgao;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfwx;->zzk(Lcom/google/android/gms/internal/ads/zzgao;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzghi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzggm;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfm;->zza()Lcom/google/android/gms/internal/ads/zzgfm;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgal;->zzd(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzgal;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzghi;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgal;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgai;->zzf()Lcom/google/android/gms/internal/ads/zzgah;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgah;->zza(I)Lcom/google/android/gms/internal/ads/zzgah;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgal;->zza()Lcom/google/android/gms/internal/ads/zzgao;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgah;->zzb(Lcom/google/android/gms/internal/ads/zzgao;)Lcom/google/android/gms/internal/ads/zzgah;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgal;->zzc()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zza(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgah;->zzc(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/zzgah;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgai;

    return-object p1
.end method

.method public final zze()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzftr<",
            "Lcom/google/android/gms/internal/ads/zzgal;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "HMAC_SHA256_128BITTAG"

    const/4 v2, 0x5

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/16 v5, 0x20

    .line 2
    invoke-static {v5, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzfwx;->zzm(IIII)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v6

    .line 3
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HMAC_SHA256_128BITTAG_RAW"

    const/4 v6, 0x3

    .line 4
    invoke-static {v5, v3, v2, v6}, Lcom/google/android/gms/internal/ads/zzfwx;->zzm(IIII)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v7

    .line 5
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HMAC_SHA256_256BITTAG"

    .line 6
    invoke-static {v5, v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzfwx;->zzm(IIII)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v7

    .line 7
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HMAC_SHA256_256BITTAG_RAW"

    .line 8
    invoke-static {v5, v5, v2, v6}, Lcom/google/android/gms/internal/ads/zzfwx;->zzm(IIII)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v2

    .line 9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HMAC_SHA512_128BITTAG"

    const/4 v2, 0x6

    const/16 v7, 0x40

    .line 10
    invoke-static {v7, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzfwx;->zzm(IIII)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v8

    .line 11
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HMAC_SHA512_128BITTAG_RAW"

    .line 12
    invoke-static {v7, v3, v2, v6}, Lcom/google/android/gms/internal/ads/zzfwx;->zzm(IIII)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v3

    .line 13
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HMAC_SHA512_256BITTAG"

    .line 14
    invoke-static {v7, v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzfwx;->zzm(IIII)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v3

    .line 15
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HMAC_SHA512_256BITTAG_RAW"

    .line 16
    invoke-static {v7, v5, v2, v6}, Lcom/google/android/gms/internal/ads/zzfwx;->zzm(IIII)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v3

    .line 17
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HMAC_SHA512_512BITTAG"

    .line 18
    invoke-static {v7, v7, v2, v4}, Lcom/google/android/gms/internal/ads/zzfwx;->zzm(IIII)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v3

    .line 19
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HMAC_SHA512_512BITTAG_RAW"

    .line 20
    invoke-static {v7, v7, v2, v6}, Lcom/google/android/gms/internal/ads/zzfwx;->zzm(IIII)Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v2

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method