.class Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction$1;
.super Ljava/lang/Object;
.source "RequestAppRequestsFunction.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;->getCallback()Lcom/facebook/GraphRequest$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;


# direct methods
.method constructor <init>(Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction$1;->this$0:Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction$1;->this$0:Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;

    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;->access$000(Lcom/marpies/ane/facebook/functions/RequestAppRequestsFunction;Lcom/facebook/GraphResponse;)V

    return-void
.end method
