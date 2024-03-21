.class public Lcom/myflashlabs/richwebview/MyExtension;
.super Ljava/lang/Object;
.source "MyExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static AS3_CONTEXT:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toDispatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 35
    sget-object v0, Lcom/myflashlabs/richwebview/MyExtension;->AS3_CONTEXT:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/myflashlabs/richwebview/MyExtension;->AS3_CONTEXT:Lcom/adobe/fre/FREContext;

    invoke-virtual {v0, p0, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->ANE_NAME:Ljava/lang/String;

    const-string v1, "MyExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/myflashlab/dependency/overrideAir/MyExtension;->toTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 0

    .line 17
    new-instance p1, Lcom/myflashlabs/richwebview/MyContext;

    invoke-direct {p1}, Lcom/myflashlabs/richwebview/MyContext;-><init>()V

    sput-object p1, Lcom/myflashlabs/richwebview/MyExtension;->AS3_CONTEXT:Lcom/adobe/fre/FREContext;

    .line 19
    sget-object p1, Lcom/myflashlabs/richwebview/MyExtension;->AS3_CONTEXT:Lcom/adobe/fre/FREContext;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 24
    sget-object v0, Lcom/myflashlabs/richwebview/MyExtension;->AS3_CONTEXT:Lcom/adobe/fre/FREContext;

    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->dispose()V

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/myflashlabs/richwebview/MyExtension;->AS3_CONTEXT:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
