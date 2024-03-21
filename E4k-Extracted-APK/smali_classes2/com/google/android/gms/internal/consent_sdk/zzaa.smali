.class final Lcom/google/android/gms/internal/consent_sdk/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@1.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzz;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzby;

.field private zzc:I

.field private zzd:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzz;Lcom/google/android/gms/internal/consent_sdk/zzby;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzc:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzd:I

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zza:Lcom/google/android/gms/internal/consent_sdk/zzz;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzby;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/consent_sdk/zzy;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/consent_sdk/zzk;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzx;->zza:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzby;

    iget v1, v1, Lcom/google/android/gms/internal/consent_sdk/zzby;->zza:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const-string v1, "Invalid response from server."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    throw v0

    .line 25
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const-string v1, "Publisher misconfiguration: "

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzby;

    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/zzby;->zzd:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    throw v0

    .line 24
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const-string v1, "Invalid response from server: "

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzby;

    iget-object v3, v3, Lcom/google/android/gms/internal/consent_sdk/zzby;->zzd:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_1
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    throw v0

    .line 21
    :pswitch_2
    iput v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzc:I

    .line 22
    iput v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzd:I

    goto :goto_2

    .line 18
    :pswitch_3
    iput v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzc:I

    .line 19
    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzd:I

    goto :goto_2

    .line 15
    :pswitch_4
    iput v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzc:I

    .line 16
    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzd:I

    goto :goto_2

    .line 12
    :pswitch_5
    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzc:I

    .line 13
    iput v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzd:I

    goto :goto_2

    .line 9
    :pswitch_6
    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzc:I

    .line 10
    iput v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzd:I

    .line 28
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzby;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzby;->zzb:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v3, v1

    goto :goto_3

    .line 31
    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzbb;

    iget-object v5, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzby;

    iget-object v5, v5, Lcom/google/android/gms/internal/consent_sdk/zzby;->zzc:Ljava/lang/String;

    invoke-direct {v3, v5, v0}, Lcom/google/android/gms/internal/consent_sdk/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zza:Lcom/google/android/gms/internal/consent_sdk/zzz;

    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zza(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zzal;

    move-result-object v0

    new-instance v5, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzby;

    iget-object v6, v6, Lcom/google/android/gms/internal/consent_sdk/zzby;->zze:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/consent_sdk/zzal;->zza(Ljava/util/Set;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzby;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzby;->zzf:Ljava/util/List;

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/consent_sdk/zzbx;

    .line 37
    sget-object v6, Lcom/google/android/gms/internal/consent_sdk/zzx;->zzb:[I

    iget v7, v5, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zza:I

    sub-int/2addr v7, v2

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    :pswitch_7
    move-object v6, v1

    goto :goto_5

    :pswitch_8
    const-string v6, "clear"

    goto :goto_5

    :pswitch_9
    const-string v6, "write"

    :goto_5
    if-eqz v6, :cond_3

    .line 44
    iget-object v7, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zza:Lcom/google/android/gms/internal/consent_sdk/zzz;

    invoke-static {v7}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzc(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zze;

    move-result-object v7

    iget-object v5, v5, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zzb:Ljava/lang/String;

    new-array v8, v2, [Lcom/google/android/gms/internal/consent_sdk/zzi;

    iget-object v9, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zza:Lcom/google/android/gms/internal/consent_sdk/zzz;

    .line 45
    invoke-static {v9}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zzaj;

    move-result-object v9

    aput-object v9, v8, v4

    .line 46
    invoke-virtual {v7, v6, v5, v8}, Lcom/google/android/gms/internal/consent_sdk/zze;->zza(Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/consent_sdk/zzi;)V

    goto :goto_4

    .line 48
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzy;

    iget v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzc:I

    iget v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzaa;->zzd:I

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/google/android/gms/internal/consent_sdk/zzy;-><init>(IILcom/google/android/gms/internal/consent_sdk/zzbb;Lcom/google/android/gms/internal/consent_sdk/zzx;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
