.class final Lcom/google/android/gms/measurement/internal/zzhx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Landroid/net/Uri;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Ljava/lang/String;

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzhz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhz;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zze:Lcom/google/android/gms/measurement/internal/zzhz;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zza:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzb:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zze:Lcom/google/android/gms/measurement/internal/zzhz;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zza:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzb:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzd:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    :try_start_0
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzia;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 2
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v5

    .line 3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    :goto_0
    move-object v5, v7

    goto :goto_2

    :cond_0
    const-string v6, "gclid"

    .line 4
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "utm_campaign"

    .line 5
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "utm_source"

    .line 6
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "utm_medium"

    .line 7
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 12
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v5

    const-string v6, "Activity created with data \'referrer\' without required params"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v6, "https://google.com/search?"

    .line 8
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 11
    :cond_2
    new-instance v8, Ljava/lang/String;

    .line 8
    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    .line 9
    :goto_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 10
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzkz;->zzs(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "_cis"

    const-string v8, "referrer"

    .line 11
    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 v6, 0x1

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzia;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkz;->zzs(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "_cis"

    const-string v8, "intent"

    .line 16
    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gclid"

    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v5, :cond_4

    const-string v2, "gclid"

    .line 18
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "gclid"

    .line 19
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    const-string v8, "_cer"

    const-string v9, "gclid=%s"

    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzia;

    const-string v8, "_cmp"

    .line 21
    invoke-virtual {v2, v3, v8, v1}, Lcom/google/android/gms/measurement/internal/zzia;->zzG(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzia;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzia;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    .line 22
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 23
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzia;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Activity created with referrer"

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzia;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    .line 27
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdy;->zzaa:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v5, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzia;

    const-string v2, "_cmp"

    .line 28
    invoke-virtual {v1, v3, v2, v5}, Lcom/google/android/gms/measurement/internal/zzia;->zzG(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzia;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzia;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    .line 29
    invoke-virtual {v1, v3, v5}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    .line 32
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzia;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Referrer does not contain valid parameters"

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzia;

    const-string v2, "auto"

    const-string v3, "_ldl"

    .line 32
    invoke-virtual {v1, v2, v3, v7, v6}, Lcom/google/android/gms/measurement/internal/zzia;->zzX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    :cond_8
    const-string v1, "gclid"

    .line 33
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "utm_campaign"

    .line 34
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "utm_source"

    .line 35
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "utm_medium"

    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "utm_term"

    .line 37
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "utm_content"

    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 41
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzia;

    const-string v2, "auto"

    const-string v3, "_ldl"

    .line 42
    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzia;->zzX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    :cond_a
    :goto_4
    return-void

    :cond_b
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzia;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Activity created with data \'referrer\' without required params"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzhz;->zza:Lcom/google/android/gms/measurement/internal/zzia;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v2, "Throwable caught in handleReferrerForOnActivityCreated"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
