.class public final Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;
.super Ljava/lang/Object;
.source "MobileAEC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/microphone/MobileAEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SamplingFrequency"
.end annotation


# static fields
.field public static final FS_16000Hz:Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;

.field public static final FS_8000Hz:Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;


# instance fields
.field private final mSamplingFrequency:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;

    const-wide/16 v1, 0x1f40

    invoke-direct {v0, v1, v2}, Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;-><init>(J)V

    sput-object v0, Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;->FS_8000Hz:Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;

    .line 54
    new-instance v0, Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;

    const-wide/16 v1, 0x3e80

    invoke-direct {v0, v1, v2}, Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;-><init>(J)V

    sput-object v0, Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;->FS_16000Hz:Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;->mSamplingFrequency:J

    return-void
.end method


# virtual methods
.method public getFS()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;->mSamplingFrequency:J

    return-wide v0
.end method
