.class final Lcom/google/android/gms/internal/ads/zzamb;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzamd;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzamd;Lcom/google/android/gms/internal/ads/zzama;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamb;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p2, "connectivity"

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    const/4 v0, 0x2

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-nez p2, :cond_1

    :catch_0
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x8

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_1

    .line 5
    :pswitch_3
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p2

    packed-switch p2, :pswitch_data_1

    :pswitch_4
    const/4 v0, 0x6

    goto :goto_1

    .line 6
    :pswitch_5
    sget p2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-lt p2, v1, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_7
    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 7
    :goto_1
    :pswitch_8
    sget p2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-lt p2, v1, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaly;->zza()Z

    if-ne v0, v3, :cond_6

    :try_start_1
    const-string p2, "phone"

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamb;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzamc;-><init>(Lcom/google/android/gms/internal/ads/zzamd;Lcom/google/android/gms/internal/ads/zzama;)V

    sget p2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v1, 0x1f

    if-ge p2, v1, :cond_4

    .line 10
    invoke-virtual {p1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_2

    :cond_4
    const/high16 p2, 0x100000

    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 12
    :goto_2
    invoke-virtual {p1, v0, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void

    .line 13
    :cond_5
    throw p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x5

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamb;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    .line 14
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzamd;->zzd(Lcom/google/android/gms/internal/ads/zzamd;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
