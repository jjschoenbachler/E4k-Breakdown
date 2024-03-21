.class Lcom/myflashlabs/richwebview/AirCommand$3;
.super Ljava/lang/Object;
.source "AirCommand.java"

# interfaces
.implements Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myflashlabs/richwebview/AirCommand;->initEmbeddedBrowser(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myflashlabs/richwebview/AirCommand;

.field final synthetic val$$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/myflashlabs/richwebview/AirCommand;Ljava/lang/String;)V
    .locals 0

    .line 1859
    iput-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$3;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    iput-object p2, p0, Lcom/myflashlabs/richwebview/AirCommand$3;->val$$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTabConnected()V
    .locals 3

    .line 1864
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand$3;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    invoke-static {v0}, Lcom/myflashlabs/richwebview/AirCommand;->access$100(Lcom/myflashlabs/richwebview/AirCommand;)Lcom/myflashlabs/richwebview/CustomTabActivityHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/myflashlabs/richwebview/AirCommand$3;->val$$url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    return-void
.end method

.method public onCustomTabDisconnected()V
    .locals 2

    .line 1870
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand$3;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    const-string v1, "onCustomTabDisconnected"

    invoke-static {v0, v1}, Lcom/myflashlabs/richwebview/AirCommand;->access$200(Lcom/myflashlabs/richwebview/AirCommand;Ljava/lang/String;)V

    return-void
.end method
