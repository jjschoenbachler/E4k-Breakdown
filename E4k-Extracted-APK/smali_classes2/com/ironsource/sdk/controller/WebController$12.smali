.class Lcom/ironsource/sdk/controller/WebController$12;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController;->onFileDownloadSuccess(Lcom/ironsource/sdk/fileSystem/ISNFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/WebController;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController;)V
    .locals 0

    .line 3709
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$12;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3712
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$12;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->load(I)V

    return-void
.end method
