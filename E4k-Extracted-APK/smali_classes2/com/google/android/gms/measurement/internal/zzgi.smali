.class final Lcom/google/android/gms/measurement/internal/zzgi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzat;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzgn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgn;Lcom/google/android/gms/measurement/internal/zzat;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgi;->zzc:Lcom/google/android/gms/measurement/internal/zzgn;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgi;->zza:Lcom/google/android/gms/measurement/internal/zzat;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgi;->zzb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgi;->zzc:Lcom/google/android/gms/measurement/internal/zzgn;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Lcom/google/android/gms/measurement/internal/zzgn;)Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzA()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgi;->zzc:Lcom/google/android/gms/measurement/internal/zzgn;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzc(Lcom/google/android/gms/measurement/internal/zzgn;)Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v2

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgi;->zza:Lcom/google/android/gms/measurement/internal/zzat;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzgi;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfv;->zzO()V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    .line 8
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzdy;->zzU:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v3, v12, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v3

    const/4 v13, 0x0

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v12}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v13, v4, [B

    goto/16 :goto_a

    :cond_0
    const-string v3, "_iap"

    .line 11
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "_iapx"

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    .line 12
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 211
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 212
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Generating a payload for this event is not available. package_name, event_name"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    .line 213
    invoke-virtual {v2, v3, v12, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 13
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->zza()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v5

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzw()V

    :try_start_0
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v3

    .line 17
    invoke-virtual {v3, v12}, Lcom/google/android/gms/measurement/internal/zzaj;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v3, "Log and bundle not available. package_name"

    invoke-virtual {v0, v3, v12}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v13, v4, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 20
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    goto/16 :goto_a

    .line 22
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    const-string v3, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v3, v12}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v13, v4, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    goto :goto_0

    .line 25
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy;->zzu()Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v14

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzaa(I)Lcom/google/android/gms/internal/measurement/zzfx;

    const-string v6, "android"

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 28
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 30
    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 32
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()J

    move-result-wide v6

    const-wide/32 v8, -0x80000000

    cmp-long v10, v6, v8

    if-eqz v10, :cond_7

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzE(I)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 34
    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzS(J)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzk()J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzM(J)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Ljava/lang/String;

    move-result-object v7

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzom;->zzc()Z

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 39
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    .line 38
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzdy;->zzac:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 44
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzy()Ljava/lang/String;

    move-result-object v8

    .line 45
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 46
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzR(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_1

    .line 47
    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 48
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzQ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_1

    .line 49
    :cond_9
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 50
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzy(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_1

    .line 40
    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 41
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzR(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_1

    .line 42
    :cond_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 43
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzy(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 46
    :cond_c
    :goto_1
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzif;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 51
    invoke-virtual {v6, v12}, Lcom/google/android/gms/measurement/internal/zzks;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    .line 52
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzJ(J)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzif;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 53
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzJ()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 54
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    .line 53
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfx;->zzal()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzt(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 55
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzag;->zzj()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 56
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 57
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/measurement/zzfx;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 58
    :cond_d
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzag;->zzi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzI(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 59
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzag;->zzj()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzks;->zzs()Lcom/google/android/gms/measurement/internal/zzjp;

    move-result-object v7

    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzjp;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;)Landroid/util/Pair;

    move-result-object v7

    .line 61
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzai()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/CharSequence;

    .line 62
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_e

    .line 63
    :try_start_3
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzat;->zzd:J

    .line 64
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 3
    invoke-static {v8, v9}, Lcom/google/android/gms/measurement/internal/zzif;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 63
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzab(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    :try_start_4
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v8, :cond_e

    .line 68
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzU(Z)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_2

    :catch_0
    move-exception v0

    .line 210
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v5, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v13, v4, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    goto/16 :goto_0

    .line 68
    :cond_e
    :goto_2
    :try_start_5
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 69
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v7

    .line 70
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgp;->zzu()V

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 71
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v7

    .line 72
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgp;->zzu()V

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzV(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 73
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v7

    .line 74
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzan;->zzb()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzaf(I)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 75
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v7

    .line 76
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzan;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/measurement/zzfx;->zzaj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 77
    :try_start_6
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzag;->zzk()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 78
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 79
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzat;->zzd:J

    .line 80
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 3
    invoke-static {v6, v7}, Lcom/google/android/gms/measurement/internal/zzif;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 84
    :cond_f
    :try_start_7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 85
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 86
    :cond_10
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 87
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v7

    .line 88
    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zzu(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 89
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzkx;

    const-string v10, "_lte"

    .line 90
    iget-object v11, v9, Lcom/google/android/gms/measurement/internal/zzkx;->zzc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_3

    :cond_12
    move-object v9, v13

    :goto_3
    const-wide/16 v22, 0x0

    if-eqz v9, :cond_13

    iget-object v8, v9, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    if-nez v8, :cond_14

    :cond_13
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkx;

    const-string v17, "auto"

    const-string v18, "_lte"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 91
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    .line 92
    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v19

    .line 93
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object v15, v8

    move-object/from16 v16, v6

    invoke-direct/range {v15 .. v21}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 94
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 95
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v6

    .line 96
    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzaj;->zzN(Lcom/google/android/gms/measurement/internal/zzkx;)Z

    :cond_14
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 97
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzks;->zzu()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v6

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 98
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v8

    .line 99
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzel;->zzj()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v8

    const-string v9, "Checking account type status for ad personalization signals"

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 100
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v8

    .line 101
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzan;->zze()Z

    move-result v8

    const-wide/16 v9, 0x1

    if-eqz v8, :cond_17

    .line 102
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v8

    .line 103
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzai()Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 105
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzo()Lcom/google/android/gms/measurement/internal/zzfm;

    move-result-object v11

    .line 106
    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/zzfm;->zzk(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 107
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v11

    .line 108
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v11

    const-string v15, "Turning off ad personalization due to account type"

    invoke-virtual {v11, v15}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    .line 109
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 110
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_16

    const-string v15, "_npa"

    .line 111
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzkx;

    .line 112
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzkx;->zzc:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 113
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_15
    const/4 v13, 0x0

    goto :goto_4

    :cond_16
    :goto_5
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzkx;

    const-string v17, "auto"

    const-string v18, "_npa"

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 114
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    .line 115
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v19

    .line 116
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object v15, v11

    move-object/from16 v16, v8

    invoke-direct/range {v15 .. v21}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 117
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_17
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/google/android/gms/internal/measurement/zzgh;

    .line 119
    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_18

    .line 120
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzd()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v8

    .line 121
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzkx;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzkx;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzgg;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 122
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzkx;

    iget-wide v9, v11, Lcom/google/android/gms/measurement/internal/zzkx;->zzd:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgg;->zzg(J)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 123
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzks;->zzu()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v9

    .line 124
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzkx;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkx;->zze:Ljava/lang/Object;

    invoke-virtual {v9, v8, v10}, Lcom/google/android/gms/measurement/internal/zzku;->zzv(Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgh;

    aput-object v8, v6, v4

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v9, 0x1

    goto :goto_6

    .line 126
    :cond_18
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzi(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 127
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb(Lcom/google/android/gms/measurement/internal/zzat;)Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 128
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzem;->zzd:Landroid/os/Bundle;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 129
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v8

    .line 130
    invoke-virtual {v8, v12}, Lcom/google/android/gms/measurement/internal/zzaj;->zzi(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 131
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzkz;->zzK(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 132
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 133
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    .line 134
    invoke-virtual {v7, v12}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd(Ljava/lang/String;)I

    move-result v7

    .line 135
    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/measurement/internal/zzkz;->zzL(Lcom/google/android/gms/measurement/internal/zzem;I)V

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zzem;->zzd:Landroid/os/Bundle;

    const-string v4, "_c"

    const-wide/16 v6, 0x1

    .line 136
    invoke-virtual {v13, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 137
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v4

    .line 138
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v4

    const-string v6, "Marking in-app purchase as real-time"

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    const-string v4, "_r"

    const-wide/16 v6, 0x1

    .line 139
    invoke-virtual {v13, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "_o"

    .line 140
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzat;->zzc:Ljava/lang/String;

    invoke-virtual {v13, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 141
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v4

    .line 142
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfx;->zzal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzkz;->zzad(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 143
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v4

    const-wide/16 v6, 0x1

    .line 144
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "_dbg"

    invoke-virtual {v4, v13, v7, v6}, Lcom/google/android/gms/measurement/internal/zzkz;->zzN(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 145
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v4

    const-string v7, "_r"

    .line 146
    invoke-virtual {v4, v13, v7, v6}, Lcom/google/android/gms/measurement/internal/zzkz;->zzN(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 147
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v4

    .line 148
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    invoke-virtual {v4, v12, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v4

    if-nez v4, :cond_1a

    new-instance v20, Lcom/google/android/gms/measurement/internal/zzap;

    .line 149
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzat;->zzd:J

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v15, 0x0

    move-wide/from16 v25, v10

    move-wide v10, v15

    move-object/from16 v27, v14

    move-wide v14, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v28, v3

    move-object/from16 v3, v20

    move-object/from16 v21, v4

    move-object v4, v12

    move-object/from16 v29, v5

    move-object/from16 v5, v21

    move-object/from16 v21, v12

    move-object/from16 v24, v13

    const/16 v30, 0x0

    move-wide/from16 v12, v25

    .line 150
    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v13, v20

    move-wide/from16 v10, v22

    goto :goto_7

    :cond_1a
    move-object/from16 v28, v3

    move-object/from16 v29, v5

    move-object/from16 v21, v12

    move-object/from16 v24, v13

    move-object/from16 v27, v14

    const/16 v30, 0x0

    .line 190
    iget-wide v5, v4, Lcom/google/android/gms/measurement/internal/zzap;->zzf:J

    .line 151
    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzat;->zzd:J

    .line 152
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzc(J)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v20

    move-wide v10, v5

    move-object/from16 v13, v20

    .line 150
    :goto_7
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 153
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v3

    .line 154
    invoke-virtual {v3, v13}, Lcom/google/android/gms/measurement/internal/zzaj;->zzF(Lcom/google/android/gms/measurement/internal/zzap;)V

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzao;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzif;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 155
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzat;->zzc:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzat;->zzd:J

    move-object v3, v14

    move-object/from16 v6, v21

    move-object/from16 v12, v24

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 156
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo;->zze()Lcom/google/android/gms/internal/measurement/zzfn;

    move-result-object v3

    iget-wide v4, v14, Lcom/google/android/gms/measurement/internal/zzao;->zzd:J

    .line 157
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfn;->zzm(J)Lcom/google/android/gms/internal/measurement/zzfn;

    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzao;->zzb:Ljava/lang/String;

    .line 158
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzfn;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfn;

    iget-wide v4, v14, Lcom/google/android/gms/measurement/internal/zzao;->zze:J

    .line 159
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfn;->zzl(J)Lcom/google/android/gms/internal/measurement/zzfn;

    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzao;->zzf:Lcom/google/android/gms/measurement/internal/zzar;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 160
    invoke-direct {v5, v4}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzar;)V

    .line 161
    :cond_1b
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 162
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zza()Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    iget-object v7, v14, Lcom/google/android/gms/measurement/internal/zzao;->zzf:Lcom/google/android/gms/measurement/internal/zzar;

    .line 164
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zzf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1b

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 165
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzks;->zzu()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v7

    .line 166
    invoke-virtual {v7, v6, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzu(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzfn;->zze(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;

    goto :goto_8

    :cond_1c
    move-object/from16 v4, v27

    .line 168
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzfx;->zzj(Lcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 169
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgb;->zza()Lcom/google/android/gms/internal/measurement/zzfz;

    move-result-object v5

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfq;->zza()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v6

    iget-wide v7, v13, Lcom/google/android/gms/measurement/internal/zzap;->zzc:J

    .line 171
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfp;->zza(J)Lcom/google/android/gms/internal/measurement/zzfp;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Ljava/lang/String;

    .line 172
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzfp;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfp;

    .line 173
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzfz;->zza(Lcom/google/android/gms/internal/measurement/zzfp;)Lcom/google/android/gms/internal/measurement/zzfz;

    .line 174
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfx;->zzX(Lcom/google/android/gms/internal/measurement/zzfz;)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 175
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzks;->zzf()Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v5

    .line 176
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 178
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzap()Ljava/util/List;

    move-result-object v8

    .line 179
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 180
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 181
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzfx;->zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 183
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzq()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 184
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzae(J)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 185
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzN(J)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 186
    :cond_1d
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()J

    move-result-wide v5

    cmp-long v0, v5, v22

    if-eqz v0, :cond_1e

    .line 187
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzY(J)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 188
    :cond_1e
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v7

    cmp-long v0, v7, v22

    if-eqz v0, :cond_1f

    .line 189
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzZ(J)Lcom/google/android/gms/internal/measurement/zzfx;

    goto :goto_9

    :cond_1f
    cmp-long v0, v5, v22

    if-eqz v0, :cond_20

    .line 190
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzZ(J)Lcom/google/android/gms/internal/measurement/zzfx;

    .line 191
    :cond_20
    :goto_9
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/zzg;->zzE()V

    .line 192
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzfx;->zzF(I)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 193
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()J

    const-wide/32 v5, 0xb3b0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzah(J)Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 195
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfx;->zzag(J)Lcom/google/android/gms/internal/measurement/zzfx;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 197
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzfx;->zzad(Z)Lcom/google/android/gms/internal/measurement/zzfx;

    move-object/from16 v0, v29

    .line 198
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zza(Lcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 199
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzd()J

    move-result-wide v5

    move-object/from16 v3, v28

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzad(J)V

    .line 200
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfx;->zzc()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzab(J)V

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 201
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v4

    .line 202
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzE(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 203
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v3

    .line 204
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzD()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    :try_start_8
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 205
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzks;->zzu()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v3

    .line 206
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzih;->zzbs()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzz([B)[B

    move-result-object v13
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    .line 21
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 207
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzel;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 209
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v13, v30

    goto :goto_a

    :catch_2
    move-exception v0

    .line 21
    :try_start_9
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzc()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v5, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v13, v4, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    goto/16 :goto_0

    :goto_a
    return-object v13

    :catchall_0
    move-exception v0

    .line 43
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkh;->zzf:Lcom/google/android/gms/measurement/internal/zzks;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzks;->zzi()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzy()V

    .line 210
    throw v0

    :goto_b
    nop

    goto :goto_b
.end method
