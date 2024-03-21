.class synthetic Lcom/ironsource/mediationsdk/MediationInitializer$3;
.super Ljava/lang/Object;
.source "MediationInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/MediationInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ironsource$mediationsdk$MediationInitializer$EInitStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->values()[Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$3;->$SwitchMap$com$ironsource$mediationsdk$MediationInitializer$EInitStatus:[I

    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$3;->$SwitchMap$com$ironsource$mediationsdk$MediationInitializer$EInitStatus:[I

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$3;->$SwitchMap$com$ironsource$mediationsdk$MediationInitializer$EInitStatus:[I

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$3;->$SwitchMap$com$ironsource$mediationsdk$MediationInitializer$EInitStatus:[I

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
