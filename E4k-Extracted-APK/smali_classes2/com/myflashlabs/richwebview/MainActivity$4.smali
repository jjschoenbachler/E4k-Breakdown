.class Lcom/myflashlabs/richwebview/MainActivity$4;
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

    .line 69
    iput-object p1, p0, Lcom/myflashlabs/richwebview/MainActivity$4;->this$0:Lcom/myflashlabs/richwebview/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 72
    iget-object p1, p0, Lcom/myflashlabs/richwebview/MainActivity$4;->this$0:Lcom/myflashlabs/richwebview/MainActivity;

    const-string v0, "btn4"

    invoke-static {p1, v0}, Lcom/myflashlabs/richwebview/MainActivity;->access$200(Lcom/myflashlabs/richwebview/MainActivity;Ljava/lang/String;)V

    return-void
.end method
