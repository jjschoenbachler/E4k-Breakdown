.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrz<",
        "Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcfk;

.field final synthetic zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Lcom/google/android/gms/internal/ads/zzcfk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zza:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v1

    const-string v2, "SignalGeneratorImpl.generateSignals"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    const-string v1, "sgf"

    const-string v2, "sgf_reason"

    .line 3
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzy(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zza:Lcom/google/android/gms/internal/ads/zzcfk;

    const-string v1, "Internal error. "

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzb(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzfx:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zza:Lcom/google/android/gms/internal/ads/zzcfk;

    const-string v0, "QueryInfo generation has been disabled."

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzb(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "QueryInfo generation has been disabled."

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzf(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 4
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zza:Lcom/google/android/gms/internal/ads/zzcfk;

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0, v0, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    const-string v0, "sgs"

    const-string v1, "rid"

    const-string v2, "-1"

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzy(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    goto/16 :goto_0

    .line 8
    :cond_1
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;->zzb:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v1, "request_id"

    const-string v2, ""

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "The request ID is empty in request JSON."

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zza:Lcom/google/android/gms/internal/ads/zzcfk;

    const-string v0, "Internal error: request ID is empty in request JSON."

    .line 15
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzb(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    const-string v0, "sgf"

    const-string v1, "sgf_reason"

    const-string v2, "rid_missing"

    .line 16
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzy(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzfi:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzd(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;->zzb:Ljava/lang/String;

    .line 19
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;->zzc:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzo(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzq(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzq(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzr(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzn(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzp(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzt(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzc(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzs(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzu(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzp(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    invoke-static {v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzt(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zza:Lcom/google/android/gms/internal/ads/zzcfk;

    iget-object v3, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;->zzb:Ljava/lang/String;

    .line 26
    invoke-interface {v2, v3, p1, v1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    const-string v1, "sgs"

    const-string v2, "rid"

    .line 27
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzy(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception p1

    const-string v0, "Failed to create JSON object from the request string."

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zza:Lcom/google/android/gms/internal/ads/zzcfk;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Internal error for request JSON: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzb(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzr;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    const-string v0, "sgf"

    const-string v1, "sgf_reason"

    const-string v2, "request_invalid"

    .line 11
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzy(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :goto_0
    const-string v0, ""

    .line 28
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
