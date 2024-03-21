.class Lcom/myflashlabs/richwebview/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myflashlabs/richwebview/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myflashlabs/richwebview/MainActivity;


# direct methods
.method constructor <init>(Lcom/myflashlabs/richwebview/MainActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/myflashlabs/richwebview/MainActivity$2;->this$0:Lcom/myflashlabs/richwebview/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 51
    iget-object p1, p0, Lcom/myflashlabs/richwebview/MainActivity$2;->this$0:Lcom/myflashlabs/richwebview/MainActivity;

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    const/16 v2, 0x2bc

    invoke-static {p1, v1, v2, v0, v0}, Lcom/myflashlabs/richwebview/MainActivity;->access$100(Lcom/myflashlabs/richwebview/MainActivity;IIII)I

    move-result p1

    .line 52
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MainActivity$2;->this$0:Lcom/myflashlabs/richwebview/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new instance id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/myflashlabs/richwebview/MainActivity;->access$200(Lcom/myflashlabs/richwebview/MainActivity;Ljava/lang/String;)V

    return-void
.end method
