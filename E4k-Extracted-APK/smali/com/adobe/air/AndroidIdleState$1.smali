.class Lcom/adobe/air/AndroidIdleState$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidIdleState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidIdleState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidIdleState;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidIdleState;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/adobe/air/AndroidIdleState$1;->this$0:Lcom/adobe/air/AndroidIdleState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 55
    :goto_0
    iget-object p1, p0, Lcom/adobe/air/AndroidIdleState$1;->this$0:Lcom/adobe/air/AndroidIdleState;

    invoke-static {p1}, Lcom/adobe/air/AndroidIdleState;->access$000(Lcom/adobe/air/AndroidIdleState;)Z

    move-result p1

    if-eq p1, v0, :cond_1

    .line 57
    iget-object p1, p0, Lcom/adobe/air/AndroidIdleState$1;->this$0:Lcom/adobe/air/AndroidIdleState;

    invoke-static {p1, v0}, Lcom/adobe/air/AndroidIdleState;->access$002(Lcom/adobe/air/AndroidIdleState;Z)Z

    .line 58
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/adobe/air/AndroidIdleState$1;->this$0:Lcom/adobe/air/AndroidIdleState;

    invoke-static {p2}, Lcom/adobe/air/AndroidIdleState;->access$000(Lcom/adobe/air/AndroidIdleState;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/adobe/air/AndroidActivityWrapper;->onScreenStateChanged(Z)V

    :cond_1
    return-void
.end method
