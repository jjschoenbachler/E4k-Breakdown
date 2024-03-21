.class public Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;
.super Ljava/lang/Object;
.source "ApplicationConfigurations.java"


# instance fields
.field private mAuctionSettings:Lcom/ironsource/mediationsdk/model/ApplicationAuctionSettings;

.field private mCrashReporter:Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;

.field private mExternalSettings:Lcom/ironsource/mediationsdk/model/ApplicationExternalSettings;

.field private mGeneralSettings:Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;

.field private mIsIntegration:Z

.field private mLogger:Lcom/ironsource/mediationsdk/model/ApplicationLogger;

.field private mPixelSettings:Lcom/ironsource/mediationsdk/utils/PixelSettings;

.field private mSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

.field private mTokenSettings:Lcom/ironsource/mediationsdk/utils/TokenSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mLogger:Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/ApplicationLogger;Lcom/ironsource/mediationsdk/model/ServerSegmetData;Lcom/ironsource/mediationsdk/utils/TokenSettings;ZLcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;Lcom/ironsource/mediationsdk/model/ApplicationExternalSettings;Lcom/ironsource/mediationsdk/utils/PixelSettings;Lcom/ironsource/mediationsdk/model/ApplicationAuctionSettings;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mLogger:Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    .line 30
    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    .line 31
    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mTokenSettings:Lcom/ironsource/mediationsdk/utils/TokenSettings;

    .line 32
    iput-boolean p4, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mIsIntegration:Z

    .line 33
    iput-object p5, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mCrashReporter:Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;

    .line 34
    iput-object p6, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mGeneralSettings:Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;

    .line 35
    iput-object p7, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mExternalSettings:Lcom/ironsource/mediationsdk/model/ApplicationExternalSettings;

    .line 36
    iput-object p8, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mPixelSettings:Lcom/ironsource/mediationsdk/utils/PixelSettings;

    .line 37
    iput-object p9, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mAuctionSettings:Lcom/ironsource/mediationsdk/model/ApplicationAuctionSettings;

    return-void
.end method


# virtual methods
.method public getAuctionSettings()Lcom/ironsource/mediationsdk/model/ApplicationAuctionSettings;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mAuctionSettings:Lcom/ironsource/mediationsdk/model/ApplicationAuctionSettings;

    return-object v0
.end method

.method public getCrashReporterSettings()Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mCrashReporter:Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;

    return-object v0
.end method

.method public getExternalSettings()Lcom/ironsource/mediationsdk/model/ApplicationExternalSettings;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mExternalSettings:Lcom/ironsource/mediationsdk/model/ApplicationExternalSettings;

    return-object v0
.end method

.method public getGeneralSettings()Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mGeneralSettings:Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;

    return-object v0
.end method

.method public getIntegration()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mIsIntegration:Z

    return v0
.end method

.method public getLoggerConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationLogger;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mLogger:Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    return-object v0
.end method

.method public getPixelSettings()Lcom/ironsource/mediationsdk/utils/PixelSettings;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mPixelSettings:Lcom/ironsource/mediationsdk/utils/PixelSettings;

    return-object v0
.end method

.method public getSegmentData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    return-object v0
.end method

.method public getTokenSettings()Lcom/ironsource/mediationsdk/utils/TokenSettings;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->mTokenSettings:Lcom/ironsource/mediationsdk/utils/TokenSettings;

    return-object v0
.end method
