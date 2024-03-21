.class Lcom/ironsource/sdk/controller/FileSystemJSAdapter$1;
.super Ljava/lang/Object;
.source "FileSystemJSAdapter.java"

# interfaces
.implements Lcom/ironsource/sdk/precache/OnPreCacheCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->createDownloadListener(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lcom/ironsource/sdk/controller/JSMessageDispatcher;)Lcom/ironsource/sdk/precache/OnPreCacheCompletion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/FileSystemJSAdapter;

.field final synthetic val$message:Lcom/ironsource/sdk/controller/JSInterfaceMessage;

.field final synthetic val$messageDispatcher:Lcom/ironsource/sdk/controller/JSMessageDispatcher;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/FileSystemJSAdapter;Lcom/ironsource/sdk/controller/JSMessageDispatcher;Lcom/ironsource/sdk/controller/JSInterfaceMessage;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter$1;->this$0:Lcom/ironsource/sdk/controller/FileSystemJSAdapter;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter$1;->val$messageDispatcher:Lcom/ironsource/sdk/controller/JSMessageDispatcher;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter$1;->val$message:Lcom/ironsource/sdk/controller/JSInterfaceMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileDownloadFail(Lcom/ironsource/sdk/fileSystem/ISNFile;Lcom/ironsource/sdk/data/ISNError;)V
    .locals 3

    .line 118
    :try_start_0
    iget-object p1, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter$1;->val$messageDispatcher:Lcom/ironsource/sdk/controller/JSMessageDispatcher;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter$1;->val$message:Lcom/ironsource/sdk/controller/JSInterfaceMessage;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter$1;->this$0:Lcom/ironsource/sdk/controller/FileSystemJSAdapter;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter$1;->val$message:Lcom/ironsource/sdk/controller/JSInterfaceMessage;

    .line 120
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/ISNError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->access$100(Lcom/ironsource/sdk/controller/FileSystemJSAdapter;Lcom/ironsource/sdk/controller/JSInterfaceMessage;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 118
    invoke-virtual {p1, v0, p2}, Lcom/ironsource/sdk/controller/JSMessageDispatcher;->sendFailureMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onFileDownloadSuccess(Lcom/ironsource/sdk/fileSystem/ISNFile;)V
    .locals 4

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter$1;->val$messageDispatcher:Lcom/ironsource/sdk/controller/JSMessageDispatcher;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter$1;->val$message:Lcom/ironsource/sdk/controller/JSInterfaceMessage;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter$1;->this$0:Lcom/ironsource/sdk/controller/FileSystemJSAdapter;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/FileSystemJSAdapter$1;->val$message:Lcom/ironsource/sdk/controller/JSInterfaceMessage;

    .line 108
    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/ironsource/sdk/controller/FileSystemJSAdapter;->access$000(Lcom/ironsource/sdk/controller/FileSystemJSAdapter;Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 106
    invoke-virtual {v0, v1, p1}, Lcom/ironsource/sdk/controller/JSMessageDispatcher;->sendSuccessMessage(Lcom/ironsource/sdk/controller/JSInterfaceMessage;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
