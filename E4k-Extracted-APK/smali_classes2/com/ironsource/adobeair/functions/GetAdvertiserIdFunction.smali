.class public Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction;
.super Ljava/lang/Object;
.source "GetAdvertiserIdFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    .line 20
    :try_start_0
    new-instance p2, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction$1;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction$1;-><init>(Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction;Lcom/adobe/fre/FREContext;)V

    invoke-direct {p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 27
    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->run()V

    const-wide/16 v0, 0x1

    .line 29
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
