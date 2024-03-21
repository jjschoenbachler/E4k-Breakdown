.class final Lcom/google/android/gms/measurement/internal/zzhj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/os/Bundle;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzia;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzia;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhj;->zzb:Lcom/google/android/gms/measurement/internal/zzia;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhj;->zza:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhj;->zzb:Lcom/google/android/gms/measurement/internal/zzia;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzhj;->zza:Landroid/os/Bundle;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "name"

    .line 4
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "origin"

    .line 5
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "value"

    .line 8
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzia;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzJ()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Conditional property not set since app measurement is disabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzkv;

    const-string v4, "triggered_timestamp"

    .line 13
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v4, "value"

    .line 14
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v15

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v6

    const-string v4, "app_id"

    .line 16
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "triggered_event_name"

    .line 17
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "triggered_event_params"

    .line 18
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v10, v3

    .line 19
    invoke-virtual/range {v6 .. v14}, Lcom/google/android/gms/measurement/internal/zzkz;->zzz(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzat;

    move-result-object v17

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v6

    const-string v4, "app_id"

    .line 21
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "timed_out_event_name"

    .line 22
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "timed_out_event_params"

    .line 23
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v10, v3

    .line 24
    invoke-virtual/range {v6 .. v14}, Lcom/google/android/gms/measurement/internal/zzkz;->zzz(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzat;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 25
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v6

    const-string v5, "app_id"

    .line 26
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "expired_event_name"

    .line 27
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "expired_event_params"

    .line 28
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v10, v3

    .line 29
    invoke-virtual/range {v6 .. v14}, Lcom/google/android/gms/measurement/internal/zzkz;->zzz(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzat;

    move-result-object v20
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzab;

    const-string v6, "app_id"

    .line 31
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "creation_timestamp"

    .line 32
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v12, 0x0

    const-string v6, "trigger_event_name"

    .line 33
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v6, "trigger_timeout"

    .line 34
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-string v6, "time_to_live"

    .line 35
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    move-object v6, v5

    move-object v8, v3

    move-object v9, v15

    move-object v14, v4

    move-wide/from16 v15, v18

    move-wide/from16 v18, v21

    invoke-direct/range {v6 .. v20}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkv;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzat;JLcom/google/android/gms/measurement/internal/zzat;JLcom/google/android/gms/measurement/internal/zzat;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zze;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzt()Lcom/google/android/gms/measurement/internal/zzjo;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzjo;->zzE(Lcom/google/android/gms/measurement/internal/zzab;)V

    :catch_0
    return-void
.end method
