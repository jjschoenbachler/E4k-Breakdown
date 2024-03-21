.class Lcom/myflashlabs/richwebview/MyWebView$1;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myflashlabs/richwebview/MyWebView;->listenToScrollingEvent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myflashlabs/richwebview/MyWebView;


# direct methods
.method constructor <init>(Lcom/myflashlabs/richwebview/MyWebView;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/myflashlabs/richwebview/MyWebView$1;->this$0:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 215
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "id"

    .line 216
    iget-object p5, p0, Lcom/myflashlabs/richwebview/MyWebView$1;->this$0:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-virtual {p5}, Lcom/myflashlabs/richwebview/MyWebView;->getId()I

    move-result p5

    invoke-virtual {p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p4, "x"

    .line 217
    invoke-virtual {p1, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "y"

    .line 218
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    sget-object p2, Lcom/myflashlabs/richwebview/ExConst;->SCROLLING:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 224
    iget-object p2, p0, Lcom/myflashlabs/richwebview/MyWebView$1;->this$0:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/myflashlabs/richwebview/MyWebView;->access$000(Lcom/myflashlabs/richwebview/MyWebView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
