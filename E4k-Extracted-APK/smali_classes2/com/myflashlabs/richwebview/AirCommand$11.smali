.class Lcom/myflashlabs/richwebview/AirCommand$11;
.super Ljava/lang/Object;
.source "AirCommand.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myflashlabs/richwebview/AirCommand;->saveWebArchive(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myflashlabs/richwebview/AirCommand;

.field final synthetic val$$id:I


# direct methods
.method constructor <init>(Lcom/myflashlabs/richwebview/AirCommand;I)V
    .locals 0

    .line 2684
    iput-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$11;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    iput p2, p0, Lcom/myflashlabs/richwebview/AirCommand$11;->val$$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 2684
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand$11;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 3

    .line 2690
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 2691
    iget v2, p0, Lcom/myflashlabs/richwebview/AirCommand$11;->val$$id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "value"

    .line 2692
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2694
    sget-object p1, Lcom/myflashlabs/richwebview/ExConst;->SAVE_WEB_ARCHIVE:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2698
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand$11;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->access$200(Lcom/myflashlabs/richwebview/AirCommand;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
