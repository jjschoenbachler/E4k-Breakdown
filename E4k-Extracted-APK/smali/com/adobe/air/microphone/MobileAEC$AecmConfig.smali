.class public Lcom/adobe/air/microphone/MobileAEC$AecmConfig;
.super Ljava/lang/Object;
.source "MobileAEC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/microphone/MobileAEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AecmConfig"
.end annotation


# instance fields
.field private mAecmMode:S

.field private mCngMode:S

.field final synthetic this$0:Lcom/adobe/air/microphone/MobileAEC;


# direct methods
.method public constructor <init>(Lcom/adobe/air/microphone/MobileAEC;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/adobe/air/microphone/MobileAEC$AecmConfig;->this$0:Lcom/adobe/air/microphone/MobileAEC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    sget-object p1, Lcom/adobe/air/microphone/MobileAEC$AggressiveMode;->AGGRESSIVE:Lcom/adobe/air/microphone/MobileAEC$AggressiveMode;

    invoke-virtual {p1}, Lcom/adobe/air/microphone/MobileAEC$AggressiveMode;->getMode()I

    move-result p1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/adobe/air/microphone/MobileAEC$AecmConfig;->mAecmMode:S

    const/4 p1, 0x1

    .line 324
    iput-short p1, p0, Lcom/adobe/air/microphone/MobileAEC$AecmConfig;->mCngMode:S

    return-void
.end method

.method static synthetic access$002(Lcom/adobe/air/microphone/MobileAEC$AecmConfig;S)S
    .locals 0

    .line 322
    iput-short p1, p0, Lcom/adobe/air/microphone/MobileAEC$AecmConfig;->mAecmMode:S

    return p1
.end method
