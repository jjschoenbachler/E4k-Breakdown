.class Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction$1;
.super Ljava/lang/Object;
.source "RequestUserFriendsFunction.java"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONArrayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;->getCallback()Lcom/facebook/GraphRequest$GraphJSONArrayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;


# direct methods
.method constructor <init>(Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction$1;->this$0:Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONArray;Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction$1;->this$0:Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;

    invoke-static {v0, p1, p2}, Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;->access$000(Lcom/marpies/ane/facebook/functions/RequestUserFriendsFunction;Lorg/json/JSONArray;Lcom/facebook/GraphResponse;)V

    return-void
.end method
