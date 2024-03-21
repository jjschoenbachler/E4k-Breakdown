.class Lcom/ironsource/sdk/fileSystem/FileSystemService$1$1;
.super Lorg/json/JSONObject;
.source "FileSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/fileSystem/FileSystemService$1;->onFileDownloadSuccess(Lcom/ironsource/sdk/fileSystem/ISNFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/fileSystem/FileSystemService$1;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/fileSystem/FileSystemService$1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/ironsource/sdk/fileSystem/FileSystemService$1$1;->this$1:Lcom/ironsource/sdk/fileSystem/FileSystemService$1;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "lastReferencedTime"

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ironsource/sdk/fileSystem/FileSystemService$1$1;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method
