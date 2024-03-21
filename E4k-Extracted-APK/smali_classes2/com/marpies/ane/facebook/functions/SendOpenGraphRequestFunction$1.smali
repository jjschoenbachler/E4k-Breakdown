.class Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction$1;
.super Ljava/lang/Object;
.source "SendOpenGraphRequestFunction.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;->getCallback()Lcom/facebook/GraphRequest$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;


# direct methods
.method constructor <init>(Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction$1;->this$0:Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction$1;->this$0:Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;

    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;->access$000(Lcom/marpies/ane/facebook/functions/SendOpenGraphRequestFunction;Lcom/facebook/GraphResponse;)V

    return-void
.end method
