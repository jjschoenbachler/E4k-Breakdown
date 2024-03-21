.class Lcom/myflashlabs/richwebview/Pick$DoSomething;
.super Landroid/os/Handler;
.source "Pick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myflashlabs/richwebview/Pick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DoSomething"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myflashlabs/richwebview/Pick;


# direct methods
.method constructor <init>(Lcom/myflashlabs/richwebview/Pick;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/myflashlabs/richwebview/Pick$DoSomething;->this$0:Lcom/myflashlabs/richwebview/Pick;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/myflashlabs/richwebview/Pick$DoSomething;->this$0:Lcom/myflashlabs/richwebview/Pick;

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/Pick;->finish()V

    return-void
.end method
