.class public final Lcom/google/android/gms/internal/consent_sdk/zzbu;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@1.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zza:I = 0x1

.field public static final enum zzb:I = 0x2

.field public static final enum zzc:I = 0x3

.field public static final enum zzd:I

.field public static final enum zze:I

.field public static final enum zzf:I

.field public static final enum zzg:I

.field public static final enum zzh:I

.field public static final enum zzi:I

.field public static final enum zzj:I

.field public static final enum zzk:I

.field public static final enum zzl:I

.field public static final enum zzm:I

.field public static final enum zzn:I

.field private static final synthetic zzo:[I

.field private static final synthetic zzp:[I

.field private static final synthetic zzq:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x3

    new-array v1, v0, [I

    sget v2, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zza:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzb:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzc:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzo:[I

    sput v4, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzd:I

    sput v5, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zze:I

    sput v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzf:I

    new-array v1, v0, [I

    sget v2, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzd:I

    aput v2, v1, v3

    sget v2, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zze:I

    aput v2, v1, v4

    sget v2, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzf:I

    aput v2, v1, v5

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzp:[I

    sput v4, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzg:I

    sput v5, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzh:I

    sput v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzi:I

    const/4 v1, 0x4

    sput v1, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzj:I

    const/4 v2, 0x5

    sput v2, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzk:I

    const/4 v6, 0x6

    sput v6, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzl:I

    const/4 v7, 0x7

    sput v7, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzm:I

    const/16 v8, 0x8

    sput v8, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzn:I

    new-array v8, v8, [I

    sget v9, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzg:I

    aput v9, v8, v3

    sget v3, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzh:I

    aput v3, v8, v4

    sget v3, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzi:I

    aput v3, v8, v5

    sget v3, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzj:I

    aput v3, v8, v0

    sget v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzk:I

    aput v0, v8, v1

    sget v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzl:I

    aput v0, v8, v2

    sget v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzm:I

    aput v0, v8, v6

    sget v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzn:I

    aput v0, v8, v7

    sput-object v8, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzq:[I

    return-void
.end method

.method public static zza(Landroid/util/JsonReader;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x3d3be2d

    if-eq v0, v1, :cond_2

    const v1, 0x4f05fbf

    if-eq v0, v1, :cond_1

    const v1, 0x6ea5670e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "UNKNOWN_ACTION_TYPE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "WRITE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "CLEAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.Action.ActionTypefrom: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 14
    :pswitch_0
    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzf:I

    return p0

    .line 13
    :pswitch_1
    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zze:I

    return p0

    .line 12
    :pswitch_2
    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzd:I

    return p0

    .line 15
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zza(ILandroid/util/JsonWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zza:[I

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "IOS"

    .line 7
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    :pswitch_1
    const-string p0, "ANDROID"

    .line 5
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-void

    :pswitch_2
    const-string p0, "UNKNOWN"

    .line 3
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-void

    :goto_0
    return-void

    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zza()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzo:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static zzb(Landroid/util/JsonReader;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "CONSENT_SIGNAL_NOT_REQUIRED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "CONSENT_SIGNAL_PERSONALIZED_ADS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "CONSENT_SIGNAL_SUFFICIENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "CONSENT_SIGNAL_PUBLISHER_MISCONFIGURATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "CONSENT_SIGNAL_NON_PERSONALIZED_ADS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "CONSENT_SIGNAL_UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "CONSENT_SIGNAL_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "CONSENT_SIGNAL_COLLECT_CONSENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 27
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.ConsentSignalfrom: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 26
    :pswitch_0
    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzn:I

    return p0

    .line 25
    :pswitch_1
    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzm:I

    return p0

    .line 24
    :pswitch_2
    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzl:I

    return p0

    .line 23
    :pswitch_3
    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzk:I

    return p0

    .line 22
    :pswitch_4
    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzj:I

    return p0

    .line 21
    :pswitch_5
    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzi:I

    return p0

    .line 20
    :pswitch_6
    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzh:I

    return p0

    .line 19
    :pswitch_7
    sget p0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzg:I

    return p0

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7ab5a7ed -> :sswitch_7
        -0x755d1a4a -> :sswitch_6
        -0x4b527788 -> :sswitch_5
        -0x38e1da9b -> :sswitch_4
        -0x36c1e70c -> :sswitch_3
        0x19984e10 -> :sswitch_2
        0x1be36b13 -> :sswitch_1
        0x66d8a81d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb()[I
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzp:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static zzc()[I
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzq:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
