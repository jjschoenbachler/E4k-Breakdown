.class Lcom/ironsource/sdk/controller/WebController$NativeAPI$9;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController$NativeAPI;->setTouchListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;)V
    .locals 0

    .line 1542
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$9;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1545
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$9;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v1, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$9;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iget-object v2, v2, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;-><init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/controller/WebController$1;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
