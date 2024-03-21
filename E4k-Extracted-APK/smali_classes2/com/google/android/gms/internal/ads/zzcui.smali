.class public final Lcom/google/android/gms/internal/ads/zzcui;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzffc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdvi;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfal;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdvi;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzffc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcui;->zza:Lcom/google/android/gms/internal/ads/zzffc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzb:Lcom/google/android/gms/internal/ads/zzdvi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzc:Lcom/google/android/gms/internal/ads/zzfal;

    return-void
.end method

.method private static zzb(I)Ljava/lang/String;
    .locals 0

    add-int/lit8 p0, p0, -0x1

    packed-switch p0, :pswitch_data_0

    const-string p0, "u"

    return-object p0

    :pswitch_0
    const-string p0, "ac"

    return-object p0

    :pswitch_1
    const-string p0, "cb"

    return-object p0

    :pswitch_2
    const-string p0, "cc"

    return-object p0

    :pswitch_3
    const-string p0, "bb"

    return-object p0

    :pswitch_4
    const-string p0, "h"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zza(JI)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzgi:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcui;->zza:Lcom/google/android/gms/internal/ads/zzffc;

    const-string v1, "ad_closed"

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzffb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzc:Lcom/google/android/gms/internal/ads/zzfal;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzffb;->zzh(Lcom/google/android/gms/internal/ads/zzfac;)Lcom/google/android/gms/internal/ads/zzffb;

    const-string v2, "show_time"

    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    const-string p1, "ad_format"

    const-string p2, "app_open_ad"

    .line 6
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    const-string p1, "acr"

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzcui;->zzb(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzffc;->zza(Lcom/google/android/gms/internal/ads/zzffb;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzb:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvi;->zzd()Lcom/google/android/gms/internal/ads/zzdvh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzc:Lcom/google/android/gms/internal/ads/zzfal;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvh;->zzb(Lcom/google/android/gms/internal/ads/zzfac;)Lcom/google/android/gms/internal/ads/zzdvh;

    const-string v1, "action"

    const-string v2, "ad_closed"

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    const-string v1, "show_time"

    .line 12
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    const-string p1, "ad_format"

    const-string p2, "app_open_ad"

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    const-string p1, "acr"

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzcui;->zzb(I)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvh;->zze()V

    return-void
.end method
