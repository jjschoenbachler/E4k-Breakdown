.class public Lcom/gaidnative/GAIDExtensionContext;
.super Lcom/adobe/fre/FREContext;


# static fields
.field public static final TAG:Ljava/lang/String; = "GAIDANE"


# instance fields
.field public act:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    const-string v0, "GAIDANE"

    const-string v1, "getFunctions"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "getGoogleAdvertisingId"

    new-instance v2, Lcom/gaidnative/GetGAIDFunction;

    invoke-direct {v2}, Lcom/gaidnative/GetGAIDFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getGaidThread()V
    .locals 2

    const-string v0, "GAIDANE"

    const-string v1, "getGaidThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gaidnative/GAIDExtensionContext$1;

    invoke-direct {v1, p0}, Lcom/gaidnative/GAIDExtensionContext$1;-><init>(Lcom/gaidnative/GAIDExtensionContext;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
