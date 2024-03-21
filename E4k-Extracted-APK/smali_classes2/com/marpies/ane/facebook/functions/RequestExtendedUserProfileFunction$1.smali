.class Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction$1;
.super Ljava/lang/Object;
.source "RequestExtendedUserProfileFunction.java"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;->getCallback()Lcom/facebook/GraphRequest$GraphJSONObjectCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;


# direct methods
.method constructor <init>(Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction$1;->this$0:Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction$1;->this$0:Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;

    invoke-static {v0, p1, p2}, Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;->access$000(Lcom/marpies/ane/facebook/functions/RequestExtendedUserProfileFunction;Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V

    return-void
.end method
