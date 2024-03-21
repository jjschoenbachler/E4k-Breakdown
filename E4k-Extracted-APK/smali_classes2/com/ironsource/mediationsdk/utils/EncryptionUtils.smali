.class public Lcom/ironsource/mediationsdk/utils/EncryptionUtils;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# static fields
.field public static final MEDIATION_KEY:Ljava/lang/String; = "C38FB23A402222A0C17D34A92F971D1F"

.field public static final MEDIATION_KEY_ENCRYPTION_VERSION:I = 0x1

.field public static final SESSION_KEY_BASE_STRING:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~"

.field public static final SESSION_KEY_ENCRYPTION_VERSION:I = 0x2

.field public static final SESSION_KEY_LENGTH:I = 0x20

.field public static final SESSION_PUBLIC_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDaUZaiASqhU4+s3JiQaIzVYtC+rZiPX2K+ZRg4C21kBZDNQM5+SEkp5GT5a9W/IR2oz6Q/ucifXcc7QEo5Xl5GX1BAhFI+8KaxPmn5Km5zFdH0aCvrrpDYQpH239Q+2uuUC79G5MpfSIw0zixU4VkF0WbVdHDpgQDds39cPl6cTwIDAQAB"

.field private static final instance:Lcom/ironsource/mediationsdk/utils/EncryptionUtils;


# instance fields
.field private encryptedSessionKey:Ljava/lang/String;

.field private mediationKey:Ljava/lang/String;

.field private sessionKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->instance:Lcom/ironsource/mediationsdk/utils/EncryptionUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->mediationKey:Ljava/lang/String;

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->sessionKey:Ljava/lang/String;

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->encryptedSessionKey:Ljava/lang/String;

    return-void
.end method

.method private generateRandomString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 49
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/ironsource/mediationsdk/utils/EncryptionUtils;
    .locals 1

    .line 30
    sget-object v0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->instance:Lcom/ironsource/mediationsdk/utils/EncryptionUtils;

    return-object v0
.end method


# virtual methods
.method public getEncryptedSessionKey()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->encryptedSessionKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDaUZaiASqhU4+s3JiQaIzVYtC+rZiPX2K+ZRg4C21kBZDNQM5+SEkp5GT5a9W/IR2oz6Q/ucifXcc7QEo5Xl5GX1BAhFI+8KaxPmn5Km5zFdH0aCvrrpDYQpH239Q+2uuUC79G5MpfSIw0zixU4VkF0WbVdHDpgQDds39cPl6cTwIDAQAB"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceRSA;->encryptStringRSA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->encryptedSessionKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session key encryption exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 90
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->encryptedSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationKey()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->mediationKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "C38FB23A402222A0C17D34A92F971D1F"

    .line 63
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->mediationKey:Ljava/lang/String;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->mediationKey:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getSessionKey()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->sessionKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~"

    const/16 v1, 0x20

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->generateRandomString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->sessionKey:Ljava/lang/String;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->sessionKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 72
    monitor-exit p0

    throw v0
.end method
