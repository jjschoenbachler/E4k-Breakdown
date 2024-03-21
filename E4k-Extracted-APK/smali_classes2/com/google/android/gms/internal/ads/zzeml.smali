.class public final Lcom/google/android/gms/internal/ads/zzeml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzerx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzerx<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzfar;

.field private final zzb:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfar;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "the targeting must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeml;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzeml;->zzb:J

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzf(Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeml;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzd:Lcom/google/android/gms/internal/ads/zzbdg;

    const-string v1, "http_timeout_millis"

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzw:I

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "slotname"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeml;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfar;->zzf:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeml;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfar;->zzo:Lcom/google/android/gms/internal/ads/zzfah;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfah;->zza:I

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "is_rewarded_interstitial"

    .line 5
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    const-string v2, "is_new_rewarded"

    .line 6
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    const-string v2, "start_signals_timestamp"

    .line 3
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzeml;->zzb:J

    .line 7
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzb:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 9
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzb:J

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-eqz v8, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v4, "cust_age"

    .line 8
    invoke-static {p1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "extras"

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzc:Landroid/os/Bundle;

    .line 10
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzd:I

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzd:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    const-string v5, "cust_gender"

    .line 12
    invoke-static {p1, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    const-string v2, "kw"

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zze:Ljava/util/List;

    .line 13
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zzg(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzg:I

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzg:I

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    const-string v5, "tag_for_child_directed_treatment"

    .line 15
    invoke-static {p1, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzf:Z

    if-eqz v2, :cond_3

    const-string v2, "test_request"

    .line 16
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zza:I

    const/4 v5, 0x2

    if-lt v3, v5, :cond_4

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzh:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    const-string v6, "d_imp_hdr"

    .line 18
    invoke-static {p1, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzi:Ljava/lang/String;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zza:I

    if-lt v3, v5, :cond_5

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    const-string v5, "ppid"

    .line 20
    invoke-static {p1, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzk:Landroid/location/Location;

    if-eqz v2, :cond_6

    .line 21
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 22
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    mul-long v5, v5, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 23
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    const-wide v10, 0x416312d000000000L    # 1.0E7

    mul-double v8, v8, v10

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 24
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    mul-double v8, v8, v10

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v8, Landroid/os/Bundle;

    .line 25
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "radius"

    .line 26
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v8, v9, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v3, "lat"

    .line 27
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "long"

    .line 28
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "time"

    .line 29
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v8, v2, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "uule"

    .line 30
    invoke-virtual {p1, v2, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    const-string v2, "url"

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzl:Ljava/lang/String;

    .line 31
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zze(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "neighboring_content_urls"

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzv:Ljava/util/List;

    .line 32
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zzg(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    const-string v2, "custom_targeting"

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzn:Landroid/os/Bundle;

    .line 33
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "category_exclusions"

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzo:Ljava/util/List;

    .line 34
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zzg(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    const-string v2, "request_agent"

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzp:Ljava/lang/String;

    .line 35
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zze(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "request_pkg"

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzq:Ljava/lang/String;

    .line 36
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zze(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzr:Z

    .line 37
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zza:I

    const/4 v5, 0x7

    if-lt v3, v5, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    const-string v5, "is_designed_for_families"

    .line 38
    invoke-static {p1, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzfbd;->zzd(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zza:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_9

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzt:I

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzt:I

    if-eq v3, v4, :cond_8

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    const-string v3, "tag_for_under_age_of_consent"

    .line 40
    invoke-static {p1, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzfbd;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    const-string v1, "max_ad_content_rating"

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzu:Ljava/lang/String;

    .line 41
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfbd;->zze(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    const/4 p1, 0x0

    .line 4
    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
