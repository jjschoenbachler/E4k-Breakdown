.class Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction$1;
.super Ljava/lang/Object;
.source "GetAdvertiserIdFunction.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction;

.field final synthetic val$freContext:Lcom/adobe/fre/FREContext;


# direct methods
.method constructor <init>(Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction;Lcom/adobe/fre/FREContext;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction$1;->this$0:Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction;

    iput-object p2, p0, Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction$1;->val$freContext:Lcom/adobe/fre/FREContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/ironsource/adobeair/functions/GetAdvertiserIdFunction$1;->val$freContext:Lcom/adobe/fre/FREContext;

    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
