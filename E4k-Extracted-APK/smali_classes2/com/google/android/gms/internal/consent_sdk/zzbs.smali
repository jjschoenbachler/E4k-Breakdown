.class public final enum Lcom/google/android/gms/internal/consent_sdk/zzbs;
.super Ljava/lang/Enum;
.source "com.google.android.ump:user-messaging-platform@@1.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/consent_sdk/zzbs;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/consent_sdk/zzbs;

.field public static final enum zzb:Lcom/google/android/gms/internal/consent_sdk/zzbs;

.field public static final enum zzc:Lcom/google/android/gms/internal/consent_sdk/zzbs;

.field public static final enum zzd:Lcom/google/android/gms/internal/consent_sdk/zzbs;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/consent_sdk/zzbs;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbs;

    const-string v1, "DEBUG_PARAM_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbs;

    const-string v1, "ALWAYS_SHOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/consent_sdk/zzbs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbs;

    const-string v1, "GEO_OVERRIDE_EEA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/consent_sdk/zzbs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbs;

    const-string v1, "GEO_OVERRIDE_NON_EEA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/consent_sdk/zzbs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    const/4 v0, 0x4

    .line 16
    new-array v0, v0, [Lcom/google/android/gms/internal/consent_sdk/zzbs;

    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zze:[Lcom/google/android/gms/internal/consent_sdk/zzbs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/consent_sdk/zzbs;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zze:[Lcom/google/android/gms/internal/consent_sdk/zzbs;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/consent_sdk/zzbs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/consent_sdk/zzbs;

    return-object v0
.end method


# virtual methods
.method public final zza(Landroid/util/JsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zzb:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzbs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "GEO_OVERRIDE_NON_EEA"

    .line 10
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    :pswitch_1
    const-string v0, "GEO_OVERRIDE_EEA"

    .line 8
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-void

    :pswitch_2
    const-string v0, "ALWAYS_SHOW"

    .line 6
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-void

    :pswitch_3
    const-string v0, "DEBUG_PARAM_UNKNOWN"

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
