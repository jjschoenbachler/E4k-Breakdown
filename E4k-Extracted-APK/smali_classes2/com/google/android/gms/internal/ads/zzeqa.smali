.class public final Lcom/google/android/gms/internal/ads/zzeqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzery;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzery<",
        "Lcom/google/android/gms/internal/ads/zzeqb;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfar;

.field private final zzc:Landroid/content/pm/PackageInfo;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfsn;Lcom/google/android/gms/internal/ads/zzfar;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0
    .param p3    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzc:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzeqb;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzepw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzepw;-><init>(Lcom/google/android/gms/internal/ads/zzeqa;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "native_version"

    const/4 v1, 0x3

    .line 1
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "native_templates"

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "native_custom_templates"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzh:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzi:Lcom/google/android/gms/internal/ads/zzblv;

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzblv;->zza:I

    const/4 v0, 0x1

    if-le p1, v1, :cond_0

    const-string p1, "enable_native_media_orientation"

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzi:Lcom/google/android/gms/internal/ads/zzblv;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzblv;->zzh:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "unknown"

    goto :goto_0

    :pswitch_0
    const-string p1, "square"

    goto :goto_0

    :pswitch_1
    const-string p1, "portrait"

    goto :goto_0

    :pswitch_2
    const-string p1, "landscape"

    goto :goto_0

    :pswitch_3
    const-string p1, "any"

    :goto_0
    const-string v1, "unknown"

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "native_media_orientation"

    .line 7
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzi:Lcom/google/android/gms/internal/ads/zzblv;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzblv;->zzc:I

    packed-switch p1, :pswitch_data_1

    const-string p1, "unknown"

    goto :goto_1

    :pswitch_4
    const-string p1, "landscape"

    goto :goto_1

    :pswitch_5
    const-string p1, "portrait"

    goto :goto_1

    :pswitch_6
    const-string p1, "any"

    :goto_1
    const-string v1, "unknown"

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "native_image_orientation"

    .line 9
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "native_multiple_images"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfar;->zzi:Lcom/google/android/gms/internal/ads/zzblv;

    .line 10
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzblv;->zzd:Z

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "use_custom_mute"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfar;->zzi:Lcom/google/android/gms/internal/ads/zzblv;

    .line 11
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzblv;->zzg:Z

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzc:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 12
    :cond_2
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 11
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzl()I

    move-result v1

    if-le p1, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzy()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 15
    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzk(I)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzx()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfar;->zzf:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "native_advanced_settings"

    .line 20
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzk:I

    if-le p1, v0, :cond_6

    const-string v1, "max_num_ads"

    .line 21
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfar;->zzb:Lcom/google/android/gms/internal/ads/zzbrx;

    if-eqz p1, :cond_9

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbrx;->zzc:Ljava/lang/String;

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzbrx;->zza:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbrx;->zzd:I

    packed-switch p1, :pswitch_data_2

    const-string p1, "l"

    goto :goto_3

    :pswitch_7
    const-string p1, "p"

    goto :goto_3

    :pswitch_8
    const-string p1, "l"

    goto :goto_3

    .line 28
    :cond_7
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbrx;->zzb:I

    packed-switch p1, :pswitch_data_3

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x34

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Instream ad video aspect ratio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is wrong."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    :pswitch_9
    const-string p1, "l"

    goto :goto_3

    :pswitch_a
    const-string p1, "p"

    :goto_3
    const-string v1, "ia_var"

    .line 24
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string v1, "ad_tag"

    .line 23
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbrx;->zzc:Ljava/lang/String;

    .line 25
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string p1, "instr"

    .line 26
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfar;->zza()Lcom/google/android/gms/internal/ads/zzbny;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string p1, "has_delayed_banner_listener"

    .line 28
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method final bridge synthetic zzc()Lcom/google/android/gms/internal/ads/zzeqb;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqa;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfar;->zzg:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzepx;->zza:Lcom/google/android/gms/internal/ads/zzeqb;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzepy;->zza:Lcom/google/android/gms/internal/ads/zzeqb;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzepz;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzepz;-><init>(Lcom/google/android/gms/internal/ads/zzeqa;Ljava/util/ArrayList;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method
