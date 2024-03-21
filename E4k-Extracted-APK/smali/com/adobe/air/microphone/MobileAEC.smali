.class public Lcom/adobe/air/microphone/MobileAEC;
.super Ljava/lang/Object;
.source "MobileAEC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/microphone/MobileAEC$AecmConfig;,
        Lcom/adobe/air/microphone/MobileAEC$AggressiveMode;,
        Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;
    }
.end annotation


# static fields
.field public static final AECM_ENABLE:S = 0x1s

.field public static final AECM_UNABLE:S


# instance fields
.field private mAecmConfig:Lcom/adobe/air/microphone/MobileAEC$AecmConfig;

.field private mAecmHandler:J

.field private mIsInit:Z

.field private mSampFreq:Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;


# direct methods
.method public constructor <init>(Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 113
    iput-wide v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmHandler:J

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmConfig:Lcom/adobe/air/microphone/MobileAEC$AecmConfig;

    .line 115
    iput-object v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mSampFreq:Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mIsInit:Z

    .line 129
    invoke-virtual {p0, p1}, Lcom/adobe/air/microphone/MobileAEC;->setSampFreq(Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;)V

    .line 130
    new-instance p1, Lcom/adobe/air/microphone/MobileAEC$AecmConfig;

    invoke-direct {p1, p0}, Lcom/adobe/air/microphone/MobileAEC$AecmConfig;-><init>(Lcom/adobe/air/microphone/MobileAEC;)V

    iput-object p1, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmConfig:Lcom/adobe/air/microphone/MobileAEC$AecmConfig;

    .line 133
    invoke-static {}, Lcom/adobe/air/microphone/MobileAEC;->nativeCreateAecmInstance()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmHandler:J

    .line 135
    iget-wide v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmHandler:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Could not create native AECM instance"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private mInitAecmInstance(I)V
    .locals 2

    .line 299
    iget-boolean v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mIsInit:Z

    if-nez v0, :cond_0

    .line 300
    iget-wide v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmHandler:J

    invoke-static {v0, v1, p1}, Lcom/adobe/air/microphone/MobileAEC;->nativeInitializeAecmInstance(JI)I

    .line 303
    new-instance p1, Lcom/adobe/air/microphone/MobileAEC$AecmConfig;

    invoke-direct {p1, p0}, Lcom/adobe/air/microphone/MobileAEC$AecmConfig;-><init>(Lcom/adobe/air/microphone/MobileAEC;)V

    iput-object p1, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmConfig:Lcom/adobe/air/microphone/MobileAEC$AecmConfig;

    .line 306
    iget-wide v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmHandler:J

    iget-object p1, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmConfig:Lcom/adobe/air/microphone/MobileAEC$AecmConfig;

    invoke-static {v0, v1, p1}, Lcom/adobe/air/microphone/MobileAEC;->nativeSetConfig(JLcom/adobe/air/microphone/MobileAEC$AecmConfig;)I

    const/4 p1, 0x1

    .line 308
    iput-boolean p1, p0, Lcom/adobe/air/microphone/MobileAEC;->mIsInit:Z

    :cond_0
    return-void
.end method

.method private static native nativeAecmProcess(J[S[S[SSS)I
.end method

.method private static native nativeBufferFarend(J[SI)I
.end method

.method private static native nativeCreateAecmInstance()J
.end method

.method private static native nativeFreeAecmInstance(J)I
.end method

.method private static native nativeInitializeAecmInstance(JI)I
.end method

.method private static native nativeSetConfig(JLcom/adobe/air/microphone/MobileAEC$AecmConfig;)I
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 271
    iget-boolean v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mIsInit:Z

    if-eqz v0, :cond_0

    .line 272
    iget-wide v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmHandler:J

    invoke-static {v0, v1}, Lcom/adobe/air/microphone/MobileAEC;->nativeFreeAecmInstance(J)I

    const-wide/16 v0, -0x1

    .line 273
    iput-wide v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmHandler:J

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mIsInit:Z

    :cond_0
    return-void
.end method

.method public echoCancellation([S[S[SSS)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    iget-boolean v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mIsInit:Z

    if-eqz v0, :cond_1

    .line 219
    iget-wide v1, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmHandler:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/adobe/air/microphone/MobileAEC;->nativeAecmProcess(J[S[S[SSS)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    return-void

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "echoCancellation() failed due to invalid arguments."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "echoCancelling() called on an unprepared AECM instance."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public farendBuffer([SI)Lcom/adobe/air/microphone/MobileAEC;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    iget-boolean v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mIsInit:Z

    if-eqz v0, :cond_1

    .line 175
    iget-wide v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/adobe/air/microphone/MobileAEC;->nativeBufferFarend(J[SI)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    return-object p0

    .line 177
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "setFarendBuffer() failed due to invalid arguments."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "setFarendBuffer() called on an unprepared AECM instance."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 283
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 285
    iget-boolean v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mIsInit:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/adobe/air/microphone/MobileAEC;->close()V

    :cond_0
    return-void
.end method

.method public prepare()Lcom/adobe/air/microphone/MobileAEC;
    .locals 3

    .line 252
    iget-boolean v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mIsInit:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/adobe/air/microphone/MobileAEC;->close()V

    .line 254
    invoke-static {}, Lcom/adobe/air/microphone/MobileAEC;->nativeCreateAecmInstance()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmHandler:J

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mSampFreq:Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;

    invoke-virtual {v0}, Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;->getFS()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/adobe/air/microphone/MobileAEC;->mInitAecmInstance(I)V

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mIsInit:Z

    .line 261
    iget-wide v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmHandler:J

    iget-object v2, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmConfig:Lcom/adobe/air/microphone/MobileAEC$AecmConfig;

    invoke-static {v0, v1, v2}, Lcom/adobe/air/microphone/MobileAEC;->nativeSetConfig(JLcom/adobe/air/microphone/MobileAEC$AecmConfig;)I

    return-object p0
.end method

.method public setAecmMode(Lcom/adobe/air/microphone/MobileAEC$AggressiveMode;)Lcom/adobe/air/microphone/MobileAEC;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/adobe/air/microphone/MobileAEC;->mAecmConfig:Lcom/adobe/air/microphone/MobileAEC$AecmConfig;

    invoke-virtual {p1}, Lcom/adobe/air/microphone/MobileAEC$AggressiveMode;->getMode()I

    move-result p1

    int-to-short p1, p1

    invoke-static {v0, p1}, Lcom/adobe/air/microphone/MobileAEC$AecmConfig;->access$002(Lcom/adobe/air/microphone/MobileAEC$AecmConfig;S)S

    return-object p0

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "setAecMode() failed due to null argument."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSampFreq(Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;)V
    .locals 0

    if-nez p1, :cond_0

    .line 152
    sget-object p1, Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;->FS_16000Hz:Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;

    iput-object p1, p0, Lcom/adobe/air/microphone/MobileAEC;->mSampFreq:Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;

    goto :goto_0

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/adobe/air/microphone/MobileAEC;->mSampFreq:Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;

    :goto_0
    return-void
.end method
