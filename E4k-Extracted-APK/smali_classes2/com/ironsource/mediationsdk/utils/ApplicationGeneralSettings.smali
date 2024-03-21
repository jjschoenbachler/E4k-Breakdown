.class public final Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;
.super Ljava/lang/Object;
.source "ApplicationGeneralSettings.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;",
        "",
        "isExternalArmEventsEnabled",
        "",
        "externalArmEventsUrl",
        "",
        "shouldUseAppSet",
        "shouldReuseAdvId",
        "(ZLjava/lang/String;ZZ)V",
        "getExternalArmEventsUrl",
        "()Ljava/lang/String;",
        "()Z",
        "getShouldReuseAdvId",
        "getShouldUseAppSet",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "mediationsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final externalArmEventsUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isExternalArmEventsEnabled:Z

.field private final shouldReuseAdvId:Z

.field private final shouldUseAppSet:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;-><init>(ZLjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZZ)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "externalArmEventsUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->isExternalArmEventsEnabled:Z

    iput-object p2, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->externalArmEventsUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldUseAppSet:Z

    iput-boolean p4, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldReuseAdvId:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-string p2, "https://outcome-arm-ext-med-ext.sonic-us.supersonicads.com/aemData"

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x1

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 9
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;-><init>(ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;ZLjava/lang/String;ZZILjava/lang/Object;)Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->isExternalArmEventsEnabled:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->externalArmEventsUrl:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldUseAppSet:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldReuseAdvId:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->copy(ZLjava/lang/String;ZZ)Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->isExternalArmEventsEnabled:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->externalArmEventsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldUseAppSet:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldReuseAdvId:Z

    return v0
.end method

.method public final copy(ZLjava/lang/String;ZZ)Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "externalArmEventsUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;-><init>(ZLjava/lang/String;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->isExternalArmEventsEnabled:Z

    iget-boolean v1, p1, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->isExternalArmEventsEnabled:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->externalArmEventsUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->externalArmEventsUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldUseAppSet:Z

    iget-boolean v1, p1, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldUseAppSet:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldReuseAdvId:Z

    iget-boolean p1, p1, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldReuseAdvId:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getExternalArmEventsUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->externalArmEventsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldReuseAdvId()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldReuseAdvId:Z

    return v0
.end method

.method public final getShouldUseAppSet()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldUseAppSet:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->isExternalArmEventsEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->externalArmEventsUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldUseAppSet:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldReuseAdvId:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isExternalArmEventsEnabled()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->isExternalArmEventsEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationGeneralSettings(isExternalArmEventsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->isExternalArmEventsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", externalArmEventsUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->externalArmEventsUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldUseAppSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldUseAppSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldReuseAdvId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->shouldReuseAdvId:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
