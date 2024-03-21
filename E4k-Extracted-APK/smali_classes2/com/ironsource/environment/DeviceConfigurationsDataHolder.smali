.class public final Lcom/ironsource/environment/DeviceConfigurationsDataHolder;
.super Ljava/lang/Object;
.source "DeviceConfigurationsDataHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/ironsource/environment/DeviceConfigurationsDataHolder;",
        "",
        "()V",
        "shouldReuseAdvertisingId",
        "",
        "getShouldReuseAdvertisingId",
        "()Z",
        "setShouldReuseAdvertisingId",
        "(Z)V",
        "shouldUseAdvertisingId",
        "getShouldUseAdvertisingId",
        "setShouldUseAdvertisingId",
        "shouldUseAppSet",
        "getShouldUseAppSet",
        "setShouldUseAppSet",
        "environment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ironsource/environment/DeviceConfigurationsDataHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static shouldReuseAdvertisingId:Z

.field private static shouldUseAdvertisingId:Z

.field private static shouldUseAppSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;

    invoke-direct {v0}, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;-><init>()V

    sput-object v0, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->INSTANCE:Lcom/ironsource/environment/DeviceConfigurationsDataHolder;

    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->shouldUseAppSet:Z

    .line 6
    sput-boolean v0, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->shouldUseAdvertisingId:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShouldReuseAdvertisingId()Z
    .locals 1

    .line 7
    sget-boolean v0, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->shouldReuseAdvertisingId:Z

    return v0
.end method

.method public final getShouldUseAdvertisingId()Z
    .locals 1

    .line 6
    sget-boolean v0, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->shouldUseAdvertisingId:Z

    return v0
.end method

.method public final getShouldUseAppSet()Z
    .locals 1

    .line 5
    sget-boolean v0, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->shouldUseAppSet:Z

    return v0
.end method

.method public final setShouldReuseAdvertisingId(Z)V
    .locals 0

    .line 7
    sput-boolean p1, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->shouldReuseAdvertisingId:Z

    return-void
.end method

.method public final setShouldUseAdvertisingId(Z)V
    .locals 0

    .line 6
    sput-boolean p1, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->shouldUseAdvertisingId:Z

    return-void
.end method

.method public final setShouldUseAppSet(Z)V
    .locals 0

    .line 5
    sput-boolean p1, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->shouldUseAppSet:Z

    return-void
.end method
