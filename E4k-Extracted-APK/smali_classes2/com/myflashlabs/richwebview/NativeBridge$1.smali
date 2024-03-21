.class Lcom/myflashlabs/richwebview/NativeBridge$1;
.super Ljava/lang/Object;
.source "NativeBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myflashlabs/richwebview/NativeBridge;->callJS(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myflashlabs/richwebview/NativeBridge;

.field final synthetic val$webUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/myflashlabs/richwebview/NativeBridge;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/myflashlabs/richwebview/NativeBridge$1;->this$0:Lcom/myflashlabs/richwebview/NativeBridge;

    iput-object p2, p0, Lcom/myflashlabs/richwebview/NativeBridge$1;->val$webUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/myflashlabs/richwebview/NativeBridge$1;->this$0:Lcom/myflashlabs/richwebview/NativeBridge;

    invoke-static {v0}, Lcom/myflashlabs/richwebview/NativeBridge;->access$000(Lcom/myflashlabs/richwebview/NativeBridge;)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/myflashlabs/richwebview/NativeBridge$1;->val$webUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/myflashlabs/richwebview/MyWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
